#/bin/bash
echo "NAME:SQL Report"
echo "FUNCTION: Writes A value to a SQL table"
echo "VERSION:0"
echo "HACKS:  Query is hardcoded, connection is odbc"


database="test"

echo "Enter table name to drop:"
read TABLENAME

echo "DROP TABLE $TABLENAME" | isql $database

bash system_sub_pause.sh

