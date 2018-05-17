select d.DBID,d.NAME,a.FILE_ID,
       a.TABLESPACE_NAME,
       a.BYTES,
       a.STATUS,
       a.AUTOEXTENSIBLE,
       a.MAXBYTES,
       a.ONLINE_STATUS
  from dba_data_files a,v$database d;

