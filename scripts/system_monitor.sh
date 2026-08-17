#!/bin/bash

echo "===== SYSTEM MONITOR ====="
echo "Date: $(date)"
echo

echo "CPU LOAD:"
uptime

echo
echo "MEMORY USAGE:"
free -h

echo
echo "DISK USAGE:"
df -h

echo
echo "TOP PROCESSES:"
ps aux --sort=-%cpu | head -6

echo
echo "===== MONITORING COMPLETED ====="
