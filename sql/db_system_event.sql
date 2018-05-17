SELECT a.SNAP_ID,
       a.DBID,
       a.INSTANCE_NUMBER,
       a.EVENT_ID,
       a.EVENT_NAME,
       a.WAIT_CLASS_ID,
       a.WAIT_CLASS,
       a.TOTAL_WAITS,
       a.TIME_WAITED_MICRO,to_char(b.BEGIN_INTERVAL_TIME,'yyyy-mm-dd hh24:mi:ss') BEGIN_TIME
  FROM dba_hist_system_event a, dba_hist_snapshot b
 where a.SNAP_ID = b.SNAP_ID
   and a.DBID = b.DBID
   and a.INSTANCE_NUMBER = b.INSTANCE_NUMBER;
 