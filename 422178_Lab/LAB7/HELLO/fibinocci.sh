#!/bin/bash

#program for finding a nth fibinocci number
a=0
b=1
sum=$((a+b))
i=3

echo Enter Number
read num1
if [ $num1 -eq 1 -o $num1 -eq 2 ]
then
   echo $((num1-1))
else
   while [[ $i -lt $num1 ]];
   do
         a=$b
         b=$sum
         sum=$((a+b))
         i=$(expr $i+1)
   done
fi
echo $num1 "fibinocci number is" $sum
