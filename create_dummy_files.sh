#!/bin/bash

#gets current directory
current_dir="$(pwd)"

#creates my_files directory
mkdir -p $current_dir/my_files

#creates dummy files
touch $current_dir/my_files/files{1..10}.txt

echo "Dummy files created:"
ls $current_dir/my_files/
