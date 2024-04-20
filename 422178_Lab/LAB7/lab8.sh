#! /bin/bash

#bc command
echo "var=10;var^=2;var" |bc
echo ""
echo "var=10;var++" |bc
echo ""
echo "var=100;var%7" |bc
echo ""
echo "var=10;--var" |bc
echo ""
echo "var1=10;var2=11;var1==var2" |bc
echo ""
pi=`echo "h=10;4*a(1)" | bc -l`
echo $pi
echo ""
echo "s($pi/3)" | bc -l
echo ""
echo "for(i=1; i<=10; i++) {i;}" | bc
echo ""
echo 'n=8;m=10;if(n>m) print "n is greater" else print "m is greater" ' | bc -l
echo ""
echo "i=1;while(i<=10) {i; i+=1}" | bc
echo ""

#comm command
echo cat file1.txt
cat file1.txt
echo ""
echo cat file2.txt
cat file2.txt
echo ""
comm file1.txt file2.txt 
echo ""
comm -1 file1.txt file2.txt 
echo ""
comm -3 file1.txt file2.txt 
echo ""
comm -12 file1.txt file2.txt
echo ""
comm --output-delimiter=% file1.txt file2.txt
echo ""
comm --version
echo ""
comm --check-order file1.txt file2.txt
echo ""

#chgrp 
sudo chgrp -c  pavan422178 file1.txt
echo ""
sudo chgrp -f pavan422178 file1.txt
echo ""
sudo chgrp -v pavan422178 file1.txt
echo ""
sudo chgrp --dereference pavan422178 file1.txt
echo ""
sudo chgrp -R pavan422178 file1.txt
echo ""
sudo chgrp -R --reference=file2.txt file1.txt
echo ""

# chown command
chown -c  pavan422178 file1.txt
echo ""
chown -v pavan422178 file1.txt
echo ""
chown -f pavan422178 file1.txt
echo ""

#diff command
diff file1.txt file2.txt
echo ""
diff -c file1.txt file2.txt
echo ""
diff -u file1.txt file2.txt 
echo ""
diff -i file1.txt file2.txt
echo ""
diff --version
echo ""
diff -w file1.txt file2.txt
echo ""

#finger command
#sudo apt-get install finger
finger pavan422178
echo ""
finger -s pavan422178
echo ""
finger -p pavan422178
echo ""
finger -l pavan422178
echo ""
finger -m pavan422178

#find command
find ./HELLO -name file1.txt
echo ""
find ./HELLO -empty
echo ""
find . -type f -exec grep -l "pattern" {} \;
echo ""
find ./HELLO -name factorial.sh -exec rm -i {} \; 
echo ""
# ftp command
tnftp -4 www.google.com
tnftp -6 www.google.com
tnftp -A google.com
tnftp -a google.com
tnftp -d google.com
tnftp -e google.com
tnftp -f google.com
tnftp -g google.com
tnftp -i google.com

#lock command
flock -s file1.txt -c 'cat file1.txt'

#ln command
ln -s file1.txt file3.txt
ls -laihr
ln file2.txt /Desktop/422178_shell_Script/LAB8

#lpstat command
lpstat -E
lpstat -l
lpstat -U
lpstat -v
lpstat -s
lpstat -a
lpstat -e
lpstat -p

# mesg command
mesg y
mesg n
mesg -v
mesg -V
mesg -h



















