#! /bin/bash
echo Enter Number
read n
fact=1
i=1

if [ $n -eq 0 -o $n -eq 1 ]
then
   echo 1
else
while [[ $i -le $n ]];
do 
   fact=$((fact*i))
   i=$(expr $i+1)
done
echo "Fatorial of $n is equal to $fact"
fi
