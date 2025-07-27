#!/bin/bash
DIR="$HOME/MONITORING"
LOG="$DIR/report.log"

mkdir -p "$DIR"

{
echo " ============================================= "
echo " System monitoring $(date) "
echo " ============================================="
echo "CPU usage"
uptime | awk -F'load average: ' '{print $2}'
echo "Memory usage"
free -h
echo "Disk usage"
df -h 
echo "Top 5 heaviest processes"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6
echo " Network IP"
ip a
} > "$LOG"

echo "Report saved in $LOG"

