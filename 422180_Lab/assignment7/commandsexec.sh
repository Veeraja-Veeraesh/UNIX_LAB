#!/bin/bash

more -d dummytext.txt
more -c dummytext.txt
more -s dummytext.txt
more -u dummytext.txt

nl -b a dummytext.txt
nl -b t dummytext.txt 
nl -n rz dummytext.txt
nl -i 10 dummytext.txt


echo "Passwd Command:"
passwd      

echo "PR Command:"
pr -h "Header" dummytext.txt   
pr -l 50 dummytext.txt          
pr -o 10 dummytext.txt         
pr -w 80 dummytext.txt        

echo "Rlogin Command:"
rlogin -l veeraja 10.0.2.15 


echo "Rsh Command:"
rsh 10.0.2.15 -l veeraja ls -l 

echo "Tput Command:"
tput setaf 2 && echo "Colored Text" && tput sgr0


echo "Tty Command:"
tty 


echo "Uname Command:"
uname -s 
uname -r 
uname -m  


echo "Wc Command:"
wc -l /path/to/file  
wc -w /path/to/file  


echo "Who Command:"
who -q 

