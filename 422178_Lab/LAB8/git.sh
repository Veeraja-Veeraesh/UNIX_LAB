#! /bin/bash

ls
git --version
git clone https://github.com/Veeraja-Veeraesh/UNIX_LAB.git/
ls
cd UNIX_LAB
git status
git chekout -b branch_1
git status
git add .
git status
git config --global user.name "unixlab8"
git config --global user.email "unixlab8@gmail.com"
git commit -m "ADDED LAB9 FILES"
git remote -v
git push origin branch_1
