#!/bin/bash

sed 's/s01/51/' file1.txt
echo ""
sed 's/25/21/' file1.txt
echo ""
sed '2d' file1.txt
echo ""
sed '$d' file1.txt
echo ""
sed '2,4d' file1.txt
echo ""
sed '5,$d' file1.txt
echo ""
sed '/22/d' file1.txt

