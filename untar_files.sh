#!/bin/bash

#gets current directory
current_dir="$(pwd)"

#tar file
tar_file="my_files.tar.gz"

#listing tar files
echo "The following files will be untar:"
tar -ztvf $current_dir/$tar_file
echo -e "\n"

#untar files
echo -e "Uncompressing files ...\n"
tar -xzvf $current_dir/$tar_file
echo -e "\n"
echo "Files uncompressed from tar.gz"
