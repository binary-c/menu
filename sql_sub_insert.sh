#/bin/bash
echo "NAME:SQL Report"
echo "FUNCTION: Writes A value to a SQL table"
echo "VERSION:0"
echo "HACKS:  Query is hardcoded, connection is odbc"

echo "insert into randoms values ($RANDOM)" | isql storage  
