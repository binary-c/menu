#/bin/bash
source system_sub_header.sh 'create table'

read -e -p "CREATE TABLE: " -i "TABLENAME" TABLENAME
read -e -p "WITH COLUMNS: " -i "c1 double, c2 double, c3 double" COLUMNS
read -e -p "ON DATABASE:  " -i "csc" DATABASE

echo $TABLENAME
QUERY="CREATE TABLE $TABLENAME ($COLUMNS)"
echo "$QUERY"
echo "$QUERY"| isql $DATABASE

source system_sub_pause.sh
