#!/bin/bash


#gets current directory
current_dir="$(pwd)"

#tar gz all recent files inside my_files except files5.txt
find  $current_dir/my_files/ -mtime -1 -type f | xargs tar -zcvf my_files.tar.gz --exclude='files5.txt'

echo "Files compressed in tar.gz"
