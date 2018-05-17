select d.DBID,d.NAME,b.SNAP_ID,
       b.DBID,
       b.INSTANCE_NUMBER,
       to_char(b.STARTUP_TIME, 'yyyy-mm-dd hh24:mi:ss') STARTUP_TIME,
       to_char(b.BEGIN_INTERVAL_TIME, 'yyyy-mm-dd hh24:mi:ss') BEGIN_TIME,
       to_char(b.END_INTERVAL_TIME, 'yyyy-mm-dd hh24:mi:ss') END_TIME
  from dba_hist_snapshot b,v$database d;

