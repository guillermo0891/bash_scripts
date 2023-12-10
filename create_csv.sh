#!/bin/bash


#get list of config files
conf_files="$(ls -la conf_files/* | awk '{print$9}' | cut -d '/' -f 2)"

#output csv file
csv_file="conf_files/summary.csv"

#initializing csv file
echo "Name,Description,IP Address,Subnet Mask" > $csv_file

#loop
while read conf_file; do
#get name
name="$(cat conf_files/$conf_file | grep -A 1 -ai name | awk 'NR>1')"

#get description
description="$(cat conf_files/$conf_file | grep -A 1 -ai description | awk 'NR>1')"

#get ip address
ip_address="$(cat conf_files/$conf_file | grep -A 1 -ai 'ip address' | awk 'NR>1')"

#get subnet mask
subnet_mask="$(cat conf_files/$conf_file | grep -A 1 -ai 'subnet mask' | awk 'NR>1')"

#adding values to csv file
echo "$name,$description,$ip_address,$subnet_mask" >> $csv_file

done <<< "$conf_files"
