SELECT a.INST_ID,a.ksppinm para_NAME, b.ksppstvl para_VALUE
  FROM sys.x$ksppi a, sys.x$ksppcv b
 WHERE a.indx = b.indx
 and a.INST_ID=b.INST_ID;
 

