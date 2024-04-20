#! /bin/bash

echo "Displaying in file"
cat in.txt
echo ""

echo "changing every to each in all occurances"
sed 's/every/each/' in.txt > out.txt
cat out.txt
echo ""

echo "changing every to each in second occurance in a line "
sed 's/every/each/2' in.txt > out.txt
cat out.txt
echo ""

echo "changing every to each in all occurance using global g"
sed 's/every/each/g' in.txt > out.txt
cat out.txt
echo ""

echo "changing every to each in all second and all occurance using global g"
sed 's/every/each/2g' in.txt > out.txt
cat out.txt
echo ""

echo "deleting second line"
sed '2d' in.txt > out.txt
cat out.txt
echo ""

echo "printing new third line"
sed '3i\THIS IS NEW THIRD LINE ' in.txt > out.txt
cat out.txt
echo ""

echo "print lines only containing word to"
sed -n '/to/p' in.txt > out.txt
cat out.txt
echo ""

echo "deleting line containing word every"
sed '/every/d' in.txt > out.txt
cat out.txt
echo ""

echo "deleting 1 to 3 lines"
sed '1,3d' in.txt > out.txt
cat out.txt
echo ""

echo "deleting last line"
sed '$d' in.txt > out.txt
cat out.txt
echo ""

echo "appending last line"
sed 'a\ appended line' in.txt > out.txt
cat out.txt
echo ""

echo "capitalising all lines"
sed 'y/abcdefghijklmnopqrstuvwxyz/ABCDEFGHIJKLMNOPQRSTUVWXYZ/' in.txt > out.txt
cat out.txt
echo ""

