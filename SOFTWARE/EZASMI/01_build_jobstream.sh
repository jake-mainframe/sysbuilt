

cd $(dirname $0)

cat << 'END'
//EZASMI JOB (JOB),
//             'INSTALL EZA',
//             CLASS=A,
//             MSGCLASS=A,
//             MSGLEVEL=(1,1),
//             USER=IBMUSER,
//             PASSWORD=SYS1
//*
//* !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//* DO NOT EDIT THIS JCL IT IS GENERATED FROM
//* 01_build_jobstream.sh edit that file instead
//* !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//*
//CLEANUP EXEC PGM=IDCAMS
//SYSIN    DD *
  DELETE SYSGEN.TCPIP.SAMPLIB
  SET MAXCC=0
  SET LASTCC=0
//SYSPRINT DD  SYSOUT=*
//*
//* Installs EZASMI
//*
//* Part 1 copy macros
//STEP1   EXEC PGM=PDSLOAD
//STEPLIB  DD  DSN=SYSC.LINKLIB,DISP=SHR
//SYSPRINT DD  SYSOUT=*
//SYSUT2   DD  DSN=SYS2.MACLIB,DISP=SHR
//SYSUT1   DD  DATA,DLM=@@
END

for i in MACLIB/*; do
    m=${i%.*}
    member=${m##*/}
    echo "./ ADD NAME=$member"
    cat "$i"
done

echo '@@'

cat << 'END'
//STEP1   EXEC PGM=PDSLOAD
//STEPLIB  DD  DSN=SYSC.LINKLIB,DISP=SHR
//SYSPRINT DD  SYSOUT=*
//SYSUT2   DD  DSN=SYSGEN.TCPIP.SAMPLIB,DISP=(NEW,CATLG),
//             VOL=SER=MVS000,
//             UNIT=3350,SPACE=(CYL,(1,1,5)),
//             DCB=(BLKSIZE=3120,RECFM=FB,LRECL=80)
//SYSUT1   DD  DATA,DLM=@@
END

for i in SAMPLIB/*; do
    m=${i%.*}
    member=${m##*/}
    echo "./ ADD NAME=$member"
    cat "$i"
done

echo '@@'

cat << 'END'
//*
//* PROC TO ASSEMBLE EZASMI
//*
//ASSEM    PROC M=DUMMY
//ASM      EXEC PGM=IFOX00,REGION=4096K,
// PARM=('XREF(FULL),OBJ,SYSPARM((ON,GEN,NODATA,YES,YES))',
//       'NODECK')
//SYSLIB   DD    DSN=SYS2.SXMACLIB,DISP=SHR
//         DD    DSN=SYS2.MACLIB,DISP=SHR
//         DD    DSN=SYS1.AMODGEN,DISP=SHR
//         DD    DSN=SYS1.MACLIB,DISP=SHR
//SYSUT1   DD    DSN=&&SYSUT1,UNIT=SYSDA,SPACE=(1700,(5600,500))
//SYSUT2   DD    DSN=&&SYSUT2,UNIT=SYSDA,SPACE=(1700,(1300,500))
//SYSUT3   DD    DSN=&&SYSUT3,UNIT=SYSDA,SPACE=(1700,(1300,500))
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=B
//SYSGO    DD DSN=&&OBJ(&M),DISP=(MOD,PASS),
//            SPACE=(800,(2000,1000,10)),UNIT=SYSDA
//SYSIN    DD DUMMY
// PEND
//*
//*
//*
END

for i in SOURCE/*; do
    m=${i%.*}
    member=${m##*/}
    echo "//$member EXEC ASSEM,M=$member"
    echo "//ASM.SYSIN DD *"
    cat "$i"
done

cat << 'END'
//LINK     EXEC PGM=IEWL,PARM='LIST,XREF'
//SYSLMOD  DD   DSN=SYS2.LINKLIB,DISP=SHR
//OBJECT   DD   DSN=&&OBJ,DISP=SHR
//SYSPRINT DD   SYSOUT=*
//SYSLIN   DD   *
 INCLUDE OBJECT(EZASOH03)
 INCLUDE OBJECT(EZACIC04)
 INCLUDE OBJECT(EZACIC05)
 ALIAS EZACIC04,EZACIC05
 NAME EZASOH03(R)
END