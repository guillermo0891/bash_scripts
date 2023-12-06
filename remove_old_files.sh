#!/bin/bash


#gets current directory
current_dir="$(pwd)"

#finding files older than 30 days
echo "The following files will be deleted:"
find $current_dir/my_files -mtime +30 -type f
echo -e "\n"

find $current_dir/my_files -mtime +30 -type f -exec rm -rf {} \;
echo "Files removed ..."
