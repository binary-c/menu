#/bin/bash
echo "NAME:SQL CSV Loader"
echo "FUNCTION: Writes A CSV file to SQL table"

read -p 'Filename:' -e -i "/home/chris/morck/data/INDEX.csv" FILE
read -p 'Database:' -e -i "test" DATABASE
read -p 'Table:' -e -i "testload" TABLE

QUERY="LOAD DATA INFILE '$FILE' INTO TABLE $TABLE fields terminated by ','  lines terminated by '\n' IGNORE 1 LINES"
echo $QUERY
echo $QUERY | isql -v $DATABASE

bash system_sub_pause.sh
