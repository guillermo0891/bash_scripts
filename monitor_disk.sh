#!/bin/bash

#get disk utilization from df
disk_utilization="$(df -h /root/ | awk '{print$5}' | awk 'NR>1' | cut -d % -f 1)"

#check if disk utilizaiton is high
if [ $disk_utilization -gt 90 ]; then
  echo "Disk utilization is high: $disk_utilization%"
else
  echo "Disk utilization is ok: $disk_utilization%"
fi
