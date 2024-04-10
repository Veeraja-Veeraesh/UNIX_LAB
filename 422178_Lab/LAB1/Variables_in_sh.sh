#! /bin/bash

echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD

echo without dollar symbol it just prints what ever we type
name="pavan"
echo THE NAME IS $name

read -p 'Enter names :' name1 name2 name3
echo The names entered are: $name1,$name2,$name3

