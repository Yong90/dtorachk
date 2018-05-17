SELECT d.DBID,d.NAME,a.NAME,
       a.STATE,
       a.TYPE,
       a.TOTAL_MB / 1024 total_gb,
       decode(a.FREE_MB,'',1,0,1,a.FREE_MB) / 1024 free_gb,
       trunc(a.FREE_MB/decode(a.FREE_MB,'',1,0,1,a.FREE_MB) *100,2) pct_free
  FROM v$asm_diskgroup,v$database d;

