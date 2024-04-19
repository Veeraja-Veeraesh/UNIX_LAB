#!/bin/bash

echo -e "Contents of file1.txt\n"
cat file1.txt
echo ""

#emulate cat command in awk
echo -e "Emulate cat command using awk\n"
awk "{ print }" file1.txt
echo ""

#printing only first 2 columns
echo -e "printing only first two columns using awk\n"
awk '{ print $1 " " $2 }' file1.txt
echo ""

#printing records starting with s and ending with 25
echo -e "printing records starting with s and ending with 25\n"
awk '/^s.*25$/{print}' file1.txt
echo ""

#printing sum of values and average in field 3
echo -e "printing sum of values in field 3\n"
awk '{ sum += $3 } END {printf "Sum= %d \nAverage= %.2f \n", sum, sum/NR}' file1.txt
echo ""

#print substring containing last 2 letters of field 1, field2 and first tow digits of field 3
echo -e "print substring containing last 2 letters of field 1, field2 and first two digits of field 3\n"
awk '{ print substr($1, 2, 3) "   " $2 "    " substr($3, 1, 2) }' file1.txt
echo ""

#print junior if 3rd column less than equal to 15000
echo -e "print junior if 3rd column less than equal to 15000"
awk '{ if ($3 > 15000) { print $1 " senior" } else { print $1 " junior" } }' file1.txt
echo ""

#print squares of the numbers in field 4
echo -e "print squares of the numbers in field 4"
awk 'function square(x) { return x*x } { print $4 " squared = " square($4) }' file1.txt
echo ""

#print the count of words in the file
echo -e "Count the number of words in the file\n"
awk '{ chars += length($0) + 1; words += NF} END { printf "No of records= %d \nNo of words= %d \nNo of characters= %d\n",NR, words, chars }' file1.txt
echo ""

#Print sum of first n numbers using recursion
echo -e "Enter a number to calculate sum of first n numbers\n"
awk 'function sumFirstN(n) 
{ 
	if (n==0) return 0
	return n+sumFirstN(n-1)
} {print $4 " = " sumFirstN($4)}' file1.txt
echo ""


