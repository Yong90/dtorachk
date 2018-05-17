#!/usr/bin/env python
# -*- coding:utf-8 -*- 

import os,sys


dbstats = {
    'db_sysstat': 'db_sysstat',
    'db_sysmetric_summary':'db_sysmetric_summary',
    'db_snapshot':'db_snapshot',
    'db_segments':'db_segments',
    'db_parameters':'db_parameters',
    'db_message':'db_message',
    'db_logs':'db_logs',
    'db_logfiles':'db_logfiles',
    'db_datafiles':'db_datafiles',
    'db_archive_sum':'db_archive_sum',
    'asm_groups':'asm_groups',
    'asm_disks':'asm_disks',
    'db_sys_time_model':'db_sys_time_model',
	'db_system_event':'db_system_event'
}

osstats={
'os_filesystem':'df -m'  ,
'os_memory':'free -m'  ,
'os_kernel_parameters':'sysctl -a',
'os_limits':'ulimit -a',
'os_cpuinfo':'cat /proc/cpuinfo',
'os_issue':'cat /etc/issue'
}



if __name__=='__main__':
    pathname = (os.path.split(os.path.abspath(sys.argv[0])))[0]

    dbscript_text='{filepath}/oraget.sh {filepath}/sql/{sqlname}.sql  {filepath}/tmp/{outfilepath}.txt'
    osscript_text='{bash_text} > {filepath}/tmp/{outfilepath}.txt'
    dbstats_keys=dbstats.keys() 
    osstats_keys=osstats.keys() 

    for key in dbstats_keys :
        db_script=dbscript_text.format(filepath=pathname,sqlname=dbstats[key],outfilepath=key )
        print(db_script)
        out_tmp=os.popen(db_script)

    for key in osstats_keys :
        os_script=osscript_text.format(filepath=pathname,bash_text=osstats[key] ,outfilepath=key)
        out_tmp=os.popen(os_script)

    opatch_script ='%s/OPatch/opatch lsinv >%s/tmp/db_patchs.txt'%(os.environ.get('ORACLE_HOME'),pathname)
    out_tmp=os.popen(opatch_script)
