//HERC01V  JOB CLASS=A,MSGCLASS=X
//*
//* VERIFY THE NETSPOOL DATASET.  THIS JOB SHOULD BE RUN IF NJE38
//* OR ANY OF ITS UTILITIES SHOULD ABEND.
//*
//INIT     EXEC PGM=IDCAMS,REGION=512K
//SYSPRINT DD SYSOUT=*
//*
//NETSPOOL DD DSN=NJE38.NETSPOOL,DISP=SHR              <== VERIFY
//*
//SYSIN    DD *
  VERIFY FILE(NETSPOOL)
/*
