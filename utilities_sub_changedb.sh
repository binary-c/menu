#/bin/bash
echo "NAME:Template"
echo "FUNCTION: what it does"
echo "VERSION:0"
echo "HACKS: List all the nasties here"

echo "Current Database is $DATABASE"
read -p 'Database Name:' -e -i "" input_variable

#input_variable="test"
export DATABASE=$input_variable
