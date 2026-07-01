#!/bin/bash
#Maintainer DIM Team May 2026
#Date 1st July 2026

LOG_FILE="monitor.log"

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

DISK_THRESHOLD=40

disk_usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Current Disk Usage : ${disk_usage}%"

if [ "$disk_usage" -gt "$DISK_THRESHOLD" ]
then
    echo "ALERT: Disk usage has exceeded ${DISK_THRESHOLD}%!"
    echo "$(date) - ALERT: Disk usage is ${disk_usage}%." >> "$LOG_FILE"
else
    echo "Disk usage is within the safe limit."
fi


# Monitoring memory usage
echo
echo "========== Memory Usage =========="

MEMORY_THRESHOLD=5

memory_usage=$(free | awk '/Mem/ {printf("%.0f"), $3/$2 * 100}')

echo "Current Memory Usage : ${memory_usage}%"

if [ "$memory_usage" -gt "$MEMORY_THRESHOLD" ]
then
    echo "ALERT: Memory usage has exceeded ${MEMORY_THRESHOLD}%!"
    echo "$(date) - ALERT: Memory usage is ${memory_usage}%." >> "$LOG_FILE"
else
    echo "Memory usage is within the safe limit."
fi

#Displaying top CPU-consuming processes
echo 
echo "========== Top CPU processes =========="

ps -eo pid,user,comm,%cpu --sort=%cpu | head

#Displaying top memory-consuming processes
echo
echo "========== Top Memory Processes =========="

ps -eo pid,user,comm,%mem --sort=-%mem | head
