#! /bin/bash


gcc -c main.c -o main_obj.o
gcc -c isFull.c -o isFull_obj.o
gcc -c isEmpty.c -o isEmpty_obj.o
gcc -c init.c -o init_obj.o
gcc -c push.c -o push_obj.o
gcc -c peek.c -o peek_obj.o
gcc -c pop.c -o pop_obj.o
gcc -c destroy -o destroy_obj.o
ar rcs eg_static.a isFull_obj.o isEmpty_obj.o init_obj.o push_obj.o pop_obj.o peek_obj.o destroy_obj.o
echo
ls
echo
gcc -o main_result main_obj.o -L. eg_static.a
echo
./main_result
echo
ls


