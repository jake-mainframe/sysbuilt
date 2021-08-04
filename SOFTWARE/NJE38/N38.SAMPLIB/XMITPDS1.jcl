//HERC01X JOB CLASS=A,MSGCLASS=X
//*
//*  TRANSMIT A PDS DATASET - LOADLIB EXAMPLE
//*
//*  1. SPECIFY THE DATASET NAME TO BE SENT ON THE SYSUT1 DD OF
//*     THE X370 STEP.
//*
//*  2. LOOK UP THE DCB ATTRIBUTES FOR THAT DATASET ELSEWHERE AND
//*     SPECIFY THEM EXACTLY THE SAME WAY ON SYSUT1.  BE SURE THE
//*     DSORG IS PO.
//*
//*  3. SPECIFY THE NODE.USERID OF THE DESTINATION IN THE PARM=
//*     FIELD OF THE 'SEND' STEP.
//*
//X370     EXEC PGM=XMIT370
//XMITLOG  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//SYSUT1   DD DISP=SHR,DSN=HERC01.LOADLIB,
//            DCB=(BLKSIZE=27998,RECFM=U,DSORG=PO)
//*
//SYSUT2   DD UNIT=SYSDA,DISP=(,DELETE),SPACE=(CYL,(10,10)),
//            DSN=&&SYSUT2
//*
//XMITOUT  DD DSN=&&XMIT,
//            DISP=(NEW,PASS),
//            UNIT=SYSDA,SPACE=(CYL,(10,10))
//*
//*
//SEND     EXEC PGM=NJ38XMIT,PARM='MVSB.HERC01'       <== TARGET USER
//STEPLIB  DD DSN=NJE38.AUTHLIB,DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=&&XMIT,DISP=(OLD,DELETE)
//
