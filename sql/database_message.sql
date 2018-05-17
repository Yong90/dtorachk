select d.DBID,d.NAME,i.VERSION,
       to_char(d.CREATED, 'yyyy-mm-dd hh24:mi:ss') CREATED,
       to_char(i.STARTUP_TIME, 'yyyy-mm-dd hh24:mi:ss') STARTUP_TIME,
       d.LOG_MODE,d.OPEN_MODE,d.DATABASE_ROLE,d.PLATFORM_ID,
       d.FLASHBACK_ON,i.INSTANCE_NUMBER,i.INSTANCE_NAME,i.HOST_NAME
  from v$database d, gv$instance i  ;
  

