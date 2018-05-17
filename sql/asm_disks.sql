SELECT d.DBID,d.NAME,a.NAME,
       b.PATH,
       b.STATE,
       b.MOUNT_STATUS,
       b.TOTAL_MB/1024 total_gb,
       b.FREE_MB/1024 free_gb
  FROM v$asm_disk b, v$asm_diskgroup a,v$database d
 WHERE a.GROUP_NUMBER = b.GROUP_NUMBER ;

 
