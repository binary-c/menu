#/bin/bash
echo "NAME:SQL Report"
echo "FUNCTION: Writes Query Output to text file"
echo "VERSION:0"
echo "HACKS:  Query is hardcoded, connection is odbc, output is screencap"
#ls ./scripts/SQL
read -p "Script:" -e -i "scripts/test.sql" FILE
read -p "Output:" -e -i "info.txt" OUTPUT
SQL=$(<$FILE)
echo "isql csc -e -n -o <<!>" $OUTPUT $SQL
