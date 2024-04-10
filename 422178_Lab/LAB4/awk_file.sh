#! /bin/bash

#awk command execution

echo "printing using cat file1.txt"
cat file1.txt
echo ""

echo "1)Printing entire file"
echo ""
awk '{print}' file1.txt
echo ""

echo "2)Printing field 2 and 3 "
echo ""
awk '{print $2,$3}' file1.txt 
echo ""

echo "3)printing tuples of column 4 if contains 25"
echo ""
awk '/25/{print $4}' file1.txt
echo ""

echo "4)Numbering tuples"
echo ""
awk '{print NR,$4}' file1.txt
echo ""

echo "5)printing 4th column"
echo ""
awk '{print $NF}' file1.txt
echo ""

echo "6)print number 4,3rd column"
echo ""
awk '{print NF,$3}' file1.txt
echo ""

echo "printing number 3 and 4 tuples of file1.txt"
awk 'NR==3, NR==4 {print NR,$0}' file1.txt
echo ""

echo " numbering column 1"
awk '{print NR "-" $1}' file1.txt
echo ""

echo " sum expression for summing numbers in 3rd column"
awk '{sum+=$3} END {print sum}' file1.txt
echo ""

echo "Average expression for average of numbers in 3rd column"
awk '{sum+=$3} END {print sum/NR}' file1.txt
echo ""

echo "only printing 2 and 3rd character of column 1"
awk '{print substr($1,2,3)}' file1.txt
echo ""

echo "printing 4th field"
awk '{print $NF}' file1.txt
echo ""

echo "if else expressions"
awk '{ if ($3 > 15000) {print "senior"} else { print "junior"} }' file1.txt
echo ""

echo "Begin and end keyword used"
awk 'BEGIN {print "starting"} {print $0} END {print "ending"}' file1.txt
echo ""

echo "if and expression used"
awk '{if ($4 <22) print $0}' file1.txt
echo ""

echo "another if else case"
awk '{if ($4 < 22) print "Lesser"; else print "greater"}' file1.txt
echo ""

echo "using while loop"
awk '{i=1; while(i<=NF) {print $i;i++}}' file1.txt
echo ""

echo "using for loop"
awk '{for(i=1;i<=NF;i++) print $i}' file1.txt
echo ""


echo "using arrays 1"
awk '{ names[$4] = $1 } END { for (num in names) print "num:", num, "Name:", names[num] }' file1.txt 
echo ""

echo "using arrays 2"
awk '{ data[NR] = $0 } END { for (i=NR; i>=1; i--) print data[i] }' file1.txt
echo ""

echo "printing NR NF and ALl columns"
awk '{print NR,NF,$0}' file1.txt
echo ""

echo "printing ORS AND OFS "
awk 'BEGIN {ORS="\n";OFS=":"} {print NR,NF,$2}' file1.txt
echo ""

echo "Argument methods"
echo ""
awk 'BEGIN {print "NUMBER OF ARGUEMENTS:",ARGC; for(i=1;i<=ARGC;i++) print "ARGUEMNET",i,":",ARGV[i]}' file1.txt
echo ""

echo "MAthematical functions"
echo ""
awk 'BEGIN {
    x = 16
    printf "Square root of %d is %f\n", x, sqrt(x)
    printf "Exponential value of %d is %f\n", x, exp(x)
    printf "Natural logarithm of %d is %f\n", x, log(x)
    printf "Integer part of %d is %d\n", x, int(x)
    printf "Random number between 0 and 1: %f\n", rand()
}'
echo ""

echo "String functions"
echo ""
awk 'BEGIN{
    {s="Hello"
    printf "length %d \n",length(s)
    printf "string to lowercase %s \n",tolower(s)
    printf "string to uppercase %s \n",toupper(s)
    }
    }'
echo ""

echo "Time functions"
echo ""
awk 'BEGIN {
    print "Current time:", systime()
    print "Formatted time:", strftime("%Y-%m-%d %H:%M:%S", systime())
}'
echo ""

echo "Taking Input from user"
echo ""
awk 'BEGIN {
    print "enter your number"
    getline number < "-"
    print "ENtered number is ",number
    }'
echo ""

echo "General user function for sqaure(x)"
echo ""
awk 'function square(x) {return x*x} BEGIN {print "square of 5 is :",square(5)}'
echo ""

echo "General user function for finding factorial"
echo ""
awk ' function fact(x)
{
result =1;
for(i=x;i>=1;i--){
   result=result*i
}
return result
}
BEGIN {
print "FACTORIAL OF 5 is :",fact(5)
}'
echo ""
