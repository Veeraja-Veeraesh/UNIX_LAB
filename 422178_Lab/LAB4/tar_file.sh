#! /bin/bash

echo "Creating a file archieve containing only text files"
tar cvf file.tar *.txt
echo ""

echo "Exporting files"
tar xvf file.tar
echo ""

echo "creating gzip file txt"
tar cvzf file.tar.gz *.txt
echo ""

echo "exporting gzip files"
tar xvzf file.tar.gz 
echo ""

echo "lists out all the files in file tar"
tar -tvf file.tar.gz
echo ""

echo "appending new file"
tar -rvf file.tar newfile.txt
echo ""
tar -xvf file.tar
echo ""

echo "creating gzip file containg new_directory"
tar cvzf file2.tar.gz new_directory
echo ""
tar xvzf file2.tar.gz
echo ""

echo "explicitly listing out a particular file"
tar -tvf file.tar out.txt
echo ""

echo "size of tar file"
tar xvf file.tar | wc -c
echo ""

echo "size of gzip file"
tar xvzf file2.tar.gz | wc -c
echo ""

echo "upadting existing files"
tar rvf file.tar *.c
echo ""
echo ""

echo "exporting all files in tar file "
tar xvf file.tar
echo ""

echo end of file.
