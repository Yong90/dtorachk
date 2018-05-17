select d.DBID,d.NAME,a.SNAP_ID,
       a.DBID,
       a.INSTANCE_NUMBER,
       a.STAT_ID,
       a.STAT_NAME,
       a.VALUE
  from DBA_HIST_SYS_TIME_MODEL a,v$database d;

  
