#!/bin/bash

#gets current directory
current_dir="$(pwd)"

touch -a -m -d 20231101 $current_dir/my_files/files{1..4}.txt
