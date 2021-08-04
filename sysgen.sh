#!/bin/bash

source ./00_sysgen_functions.sh
trap 'check_return' 0

# Sysgen automated installer

cwd=$(pwd)

NOINSTALL=0
NORAKF=0
NOHERC=0
NOSTARTER=0
NODISTRIB=0
NOSYSGEN=0
NOCUSTOM=0
USERNAME=0
PASSWORD=0

while [[ "$#" -gt 0 ]]; do
    case $1 in
        -n|--no-install) NOINSTALL=1 ;;
        -r|--no-rakf) NORAKF=1 ;;
        --skip-hercules) NOHERC=1 ;;
        --skip-starter) NOSTARTER=1 ;;
        --skip-distrib) NODISTRIB=1 ;;
        --skip-sysgen) NOSYSGEN=1 ;;
        --skip-custom) NOCUSTOM=1 ;;
        --username)
            shift
            USERNAME=$1 ;;
        --password)
            shift
            PASSWORD=$1 ;;
        -h|--help)  echo "SYSGEN automated installer"
                    echo "Usage:"
                    echo "    ./sysgen.sh -h/--help       Display this help message."
                    echo "    ./sysgen.sh -n/--no-install Install RAKF and MDDIAG8 but no other software."
                    echo "    ./sysgen.sh -r/--no-rakf    Do not install any software including RAKF/MDDIAG8."
                    echo "    ./sysgen.sh --username      Add this username to RAKF"
                    echo "    ./sysgen.sh --password      Use this password for new user (optional, if skipped a random one will be generated)"
                    echo "    ./sysgen.sh --skip-hercules Skip building hercules"
                    echo "    ./sysgen.sh --skip-starter  Skip building hercules and building starter"
                    echo "    ./sysgen.sh --skip-distrib  Skip building hercules, starter and distribution"
                    echo "    ./sysgen.sh --skip-sysgen   Skip building hercules, starter, distribution and sysgen"
                    echo "    ./sysgen.sh --skip-custom   Skip all steps and install RAKF"
                    set +e
                    trap : 0
                    exit 0
                    ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

set -e

if [ $NOHERC -eq 1 ] || [ $NOSTARTER -eq 1 ] || [ $NODISTRIB -eq 1 ] \
                     || [ $NOSYSGEN -eq 1 ] || [ $NOCUSTOM -eq 1 ]; then
    echo_warn "Skipping Hercules Build"
else
    echo_step "Building SDL Hercules from source"
    bash 01_sysgen_build_hercules.sh
fi

if [ $NOSTARTER -eq 1 ] || [ $NODISTRIB -eq 1 ] \
    || [ $NOSYSGEN -eq 1 ] || [ $NOCUSTOM -eq 1 ]; then
    echo_warn "Skipping starter system"
else
    echo_step "Building Starter System"
    bash 02_sysgen_build_starter.sh
fi

if [ $NODISTRIB -eq 1 ] \
    || [ $NOSYSGEN -eq 1 ] || [ $NOCUSTOM -eq 1 ]; then
    echo_warn "Skipping Distribution Libraries"
else
    echo_step "Building Distribution Libraries"
    bash 03_sysgen_build_distribution_libraries.sh
fi

if [ $NOSYSGEN -eq 1 ] || [ $NOCUSTOM -eq 1 ]; then
    echo_warn "Skipping System Generation"
else
    echo_step "System Generation"
    bash 04_sysgen_system_generation.sh
fi


if [ $NOCUSTOM -eq 1 ]; then
    echo_warn "Skipping Customizations"
else
    echo_step "Installing Customizations"
    bash 05_sysgen_customization.sh
fi

if [ $NORAKF -eq 1 ]; then
    echo_warn "Skipping RAKF"
else
    echo_step "Installing RAKF"

    if [ $USERNAME != "0" ]; then

        if [ $PASSWORD = "0" ]; then
            PASSWORD=$(cat /dev/urandom 2>/dev/null| tr -dc 'A-Z0-9$@#' 2>/dev/null | head -c 8 )
        fi
        #echo_step "Using username/password:" $USERNAME $PASSWORD
    fi
    cd sysgen
    rm -rf dasd
    prev_dasd=$(ls -Art dasd.04.customization.*.tar | tail -n 1)
    echo_step "Untarring $prev_dasd"
    tar -xvf $prev_dasd

    cd ../SOFTWARE
    rm -rf RAKF
    git clone https://github.com/MVS-sysgen/RAKF.git || true
    cd RAKF
    if [ $USERNAME != "0" ]; then
        bash ./install_rakf.sh $USERNAME $PASSWORD
    else
        bash ./install_rakf.sh
    fi

    if [ $NOINSTALL -eq 1 ]; then
        echo_warn "No software installed"
    else
        cd ../../
        echo_step 'Installing MDDIAG8, REVIEW, BREXX, IND$FILE, and FTPD'
        bash 06_sysgen_software_install.sh
    fi

fi

echo "cd sysgen" > start_mvs.sh
echo "hercules -f conf/local.cnf -r autostart.rc > hercules.log" >> start_mvs.sh
chmod +x start_mvs.sh

echo_step "System Generation complete"
if [ $USERNAME != "0" ]; then
    echo_warn "HMVS01/CUL8TR replaced with: $USERNAME/$PASSWORD"
fi
echo_step "To launch MVS 3.8j use: ./start_mvs.sh"

trap : 0
