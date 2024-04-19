#!/bin/bash

echo "** Creating a compressed archive:**"
tar -czvf tar_test.tar.gz tar_test

echo "\n** Listing the contents of an archive:**"
tar -tvf tar_test.tar.gz

echo "\n Creating new directory"
mkdir tar_test_extracted

echo "\n** Extracting an archive:**"
tar -xvf tar_test.tar.gz -C tar_test_extracted


