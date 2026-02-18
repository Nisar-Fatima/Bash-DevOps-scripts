#!/bin/bash

# Print report title
echo "===== SERVER HEALTH REPORT ====="

# Show current date
echo "Date: $(date)"
echo

# Show CPU load
echo "---- CPU Load ----"
uptime
echo

# Show memory usage (in MB)
echo "---- Memory Usage ----"
free -m
echo

# Show disk usage
echo "---- Disk Usage ----"
df -h
echo

# Show top 5 memory consuming processes
echo "---- Top 5 Memory Consuming Processes ----"
ps aux --sort=-%mem | head -6

