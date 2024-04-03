#! /bin/bash

echo ""
ls | cpio -ov > directory.cpio
echo ""

echo ""
find . -print -depth | cpio -ov > nest.cpio
echo ""

echo ""
cpio -iv < directory.cpio
echo ""

echo ""
cpio -idv < nest.cpio
echo ""

echo ""
find . -depth -print0 | cpio --null -pvd new-dir
echo ""

echo ""
find . -print | cpio -ocv > /dev/fd0
echo ""
