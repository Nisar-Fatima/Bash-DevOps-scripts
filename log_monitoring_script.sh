#!/bin/bash

# Take log file as input
LOG_FILE=$1

# Check if file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "File not found!"
    exit 1
fi

echo "Total lines:"
wc -l "$LOG_FILE"

echo "ERROR count:"
grep -i "error" "$LOG_FILE" | wc -l

echo "WARNING count:"
grep -i "warning" "$LOG_FILE" | wc -l
