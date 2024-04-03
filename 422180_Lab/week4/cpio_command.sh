#!/bin/bash

ls  week4_folder1 | cpio -ov > ./cpio_archive.cpio

# Extract the contents of the archive to the current directory
cpio -iv < ./cpio_archive.cpio

ls
ls | cpio -ovH tar > ./cpio_archive.cpio
ls
