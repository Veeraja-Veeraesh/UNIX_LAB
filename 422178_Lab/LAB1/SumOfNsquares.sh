#!/bin/bash
echo Enter Number
read n
sum=0
i=1
while [[ $i -le $n ]]
do
    sum=$((sum + i*i))
    i=$(expr $i+1)
done
echo sum of n squares is $sum
    
