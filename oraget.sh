#!/usr/bin/env bash
source ~/.bash_profile
sqlplus -S / as sysdba << EOF  
set heading off pagesize 0 linesize 30000  echo off termout off feedback off colsep , wrap off trims on  
spool $2 
@$1
exit
EOF
