#!/bin/bash
while read line
do
        arr=("${arr[@]}" $line)
done
echo "Given array: " ${arr[@]}
max=${arr[0]}
max2=${arr[1]}
for i in "${arr[@]}"
do
        if [ $i -ge $max ]
        then
                max2=$max
                max=$i
        elif [ $i -ge $max2 ]
        then
                max2=$i
        fi
done
echo "2nd largest element in array: " $max2
