#! /bin/bash

ls 
echo 
gcc *.o -shared -o eg_dynamic.so
ls
echo
gcc -o main_result main_obj.o -L. eg_dynamic.so
./main_result
echo
sudo cp eg_dynamic.so /usr/lib
./main_result
echo
ldd main_result
