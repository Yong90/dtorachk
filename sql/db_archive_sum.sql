SELECT d.DBID,
       d.NAME,
       i.INSTANCE_NUMBER,
       i.INSTANCE_NAME,
       substr(to_char(FIRST_TIME, 'yyyy-mm-dd hh24'), 1, 15) DAY,
       COUNT(*)
  FROM gv$log_history a, gv$instance i, gv$database d
 WHERE a.INST_ID=i.INST_ID
 GROUP BY d.DBID,
          d.NAME,
          i.INSTANCE_NUMBER,
          i.INSTANCE_NAME,
          substr(to_char(FIRST_TIME, 'yyyy-mm-dd hh24'), 1, 15)
 ORDER BY substr(to_char(FIRST_TIME, 'yyyy-mm-dd hh24'), 1, 15);
 
