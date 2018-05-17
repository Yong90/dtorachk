select d.DBID,
       d.NAME,
       i.INSTANCE_NUMBER,
       i.INSTANCE_NAME,
       b.GROUP#,
       b.STATUS,
       b.TYPE,
       b.MEMBER,
       b.IS_RECOVERY_DEST_FILE
  from gv$logfile b, v$database d, gv$instance i
  where b.INST_ID=i.INST_ID;
  

