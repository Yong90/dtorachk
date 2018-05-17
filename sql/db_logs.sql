select d.DBID,
       d.NAME,
       i.INSTANCE_NUMBER,
       i.INSTANCE_NAME,
       a.GROUP#,
       a.THREAD#,
       a.SEQUENCE#,
       a.MEMBERS,
       a.ARCHIVED,
       a.STATUS,
       a.BYTES / 1024 / 1024 size_mb
  from v$log a, v$database d, gv$instance i
  where a.THREAD#=i.INSTANCE_NUMBER;
  

