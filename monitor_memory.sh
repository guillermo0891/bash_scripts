#!/bin/bash


#get memory utilization
memory_utilization="$(free -h | awk '{print$3}' | sed -n '2p' | rev | cut -c3- | rev)"

#get total memory
total_memory="$(free -h | awk '{print$2}' | sed -n '2p' | rev | cut -c3- | rev)"

#check if memory utilization is high
if [ $(($memory_utilization*100/$total_memory)) -gt 90 ]; then
  echo "Memory utilization is high: $(($memory_utilization*100/$total_memory))%"
else
  echo "Memory utilization is ok: $(($memory_utilization*100/$total_memory))%"
fi
