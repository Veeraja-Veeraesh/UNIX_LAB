#!/bin/bash

echo "** Creating a compressed archive:**"
tar -czvf week_4_folder1.tar.gz week4_folder1

echo "\n** Listing the contents of an archive:**"
tar -tvf week_4_folder1.tar.gz

echo "\n** Extracting an archive:**"
tar -xvf week_4_folder1.tar.gz -C week_4_folder1_extracted

