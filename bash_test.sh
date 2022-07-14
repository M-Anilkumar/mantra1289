#!/bin/bash

echo "Sample test"
echo "creating a new Directory in present DIR, with the name \"DIR_BY_1289\""

mkdir DIR_BY_1289
 
echo "In DIR_BY_1289 creating a file with name file_1289.csv"
 
cd DIR_BY_1289  
touch data_1289.csv
cd ..
cp file_1289.csv DIR_BY_1289
cp hello.txt DIR_BY_1289
cd DIR_BY_1289
rm data_1289.csv
mv file_1289.csv data_1289.csv
cat hello.txt
echo "-------------"
echo "Test in file is"
echo "-------------"
cat data_1289.csv
echo "-------------"
echo "PRINTING FIRST 10 EMPLOYEE DETAILS"
echo "-------------"
head data_1289.csv
echo "------------"
echo "PRINTING LAST 10 EMPLOYEE DETAILS"
echo "-------------"
tail data_1289.csv
echo "------------"
echo "PRINTING EMPLOYEE WHOSE DESIGNATION IS DEVOPS"
echo "-------------"
cat data_1289.csv | grep "DevOps"

echo "-----------"
echo "PRINTING EMPLOYEE WHOSE DESIGNATION IS DEVOPS IN SORTING ORDER"
echo "-----------"
cat data_1289.csv | grep "DevOps" | sort -k 1n
echo "-----------"

echo "PRINTING THE EMPLOYEE BY CHANGING THE WORD \"Testing\" as \"QA Testing\""
echo "-------------"
sed "s/Testing/QA Testing/g" data_1289.csv
echo "-----------"
echo "PRINTING ONLY THE SERIAL_NUMBER,NAMES,ID and DESIGNATION OF EMPLOYEEE"
echo "-------------"
grep -v "EMPLOYEE_ID" data_1289.csv | awk -F "," '{print NR,$1,$2,$6}'

echo "-------------"

echo "PRINTING THE COUNT OF ROWS,COLUMNS and WORDS OF file data_1289.csv"
echo "-------------"
wc data_1289.csv 
echo "-------------"

echo "PRINTING THE DETAILS WITH WHILE LOOP"
echo "-------------"
i=1
while [ $i -lt 11 ]
do
        line1=$(echo $i)
        line2=$(echo "while loop iteration ")
        line3=$(echo "$line2,$line1")
        echo $line3
	i=$(($i+1))
done
echo "-------------"
echo "PRINTING THE EVEN NUMBERS BY USING FOR LOOP"
echo "-------------"

for i in {1..5}
do
	if [ $(($i % 2)) -eq 0 ]
	then
	line1=$(echo $i)
        line3=$(echo "$i")
        echo $line3
	fi
done


cd ..

echo "I really Thankfull to Hari"
















































rm -r DIR_BY_1289



