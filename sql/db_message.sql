select d.DBID,d.NAME,i.INSTANCE_NUMBER,i.INSTANCE_NAME,i.HOST_NAME,i.VERSION,parallel is_rac,
       to_char(d.CREATED, 'yyyy-mm-dd hh24:mi:ss') CREATED,
       to_char(i.STARTUP_TIME, 'yyyy-mm-dd hh24:mi:ss') STARTUP_TIME,
       d.LOG_MODE,d.OPEN_MODE,d.DATABASE_ROLE,d.PLATFORM_ID,
       d.FLASHBACK_ON,
       ((((((to_number(to_char(SYSDATE, 'YYYY')) - 1988) * 12 * 31 * 24 * 60 * 60) +
       ((to_number(to_char(SYSDATE, 'MM')) - 1) * 31 * 24 * 60 * 60) +
       (((to_number(to_char(SYSDATE, 'DD')) - 1)) * 24 * 60 * 60) +
       (to_number(to_char(SYSDATE, 'HH24')) * 60 * 60) +
       (to_number(to_char(SYSDATE, 'MI')) * 60) +
       (to_number(to_char(SYSDATE, 'SS')))) * (16 * 1024)) -
       dbms_flashback.get_system_change_number) /
       (16 * 1024 * 60 * 60 * 24)) indicator
  from v$database d, gv$instance i;

