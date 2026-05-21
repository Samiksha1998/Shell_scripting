#!/bin/bash

#---------To check Disk usage---------#
echo "-----Disk usage------"
df -h | awk '{print $1, $5}'

#---------To check Memory usage---------#
echo "------Memory Usage------"
free -m | awk 'NR==2{printf "Total_Memory:%s | Free: %s | Total_Usage: %.2f%%\n", $2,$4,$3*100/$2 }'

#---------To check CPU usage---------#
echo "--------CPU usage------"
top -bn1 | grep "Cpu(s)" | awk '{printf "CPU Load: %.2f%%\n", ($2 + $4)}'
