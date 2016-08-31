#!/bin/bash
source system_sub_header.sh 'System Backup'

source system_sub_checksudo.sh
echo 'long running process ~20min'

sudo ../scripts/system_cleanup/backupsystem.sh 

source system_sub_pause.sh

