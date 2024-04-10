#!/bin/bash

echo "Free and Used Memory: "
free
echo

echo "Free and Used Memory in Megabytes: "
free -m
echo

echo "CPU usage:"
mpstat
echo

echo "CPU usage on each CPU CORE:"
mpstat -P ALL
echo
