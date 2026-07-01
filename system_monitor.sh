#!/bin/bash
#Maintainer DIM Team May 2026
#Date 1st July 2026

# Displaying basic system information
echo "======================================"
echo "      SYSTEM MONITORING SCRIPT"
echo "======================================"

echo
echo "Hostname : $(hostname)"
echo "Current User : $(whoami)"
echo "Date : $(date)"
echo "Uptime : $(uptime -p)"

# Monitoring disk usage
echo
echo "========== Disk Usage =========="

DISK_THRESHOLD=80

disk_usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Current Disk Usage : ${disk_usage}%"

if [ "$disk_usage" -gt "$DISK_THRESHOLD" ]
then
    echo "ALERT: Disk usage has exceeded ${DISK_THRESHOLD}%!"
else
    echo "Disk usage is within the safe limit."
fi

#Monitoring memory usage
