#!/bin/bash

echo "Enter number to check whether palindrome or not"
read n

temp=$n
rev=0
while [ $n -ne 0 ]
do
        rem=$((n%10))
        rev=$((rev*10+rem))
        n=$((n/10))
done
if [ $rev -eq $temp ]
then
        echo "It's palindrome"
else
        echo "It's not palindrome"
fi
