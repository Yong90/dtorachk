select d.DBID,d.NAME,t.owner,
       t.segment_name,
       t.partition_name,
       t.segment_type,
       t.tablespace_name,
       t.BYTES
  from SYS.DBA_SEGMENTS t,v$database d;

