#!/bin/bash

THRESHOLD=80
LOGFILE="/opt/linux-monitor/logs/disk_alert.log"

echo "========" >> "$LOGFILE"
echo "DISK USAGE CHECK - $(date)" >> "$LOGFILE"
echo "========" >> "$LOGFILE"

df -P -x tmpfs -x devtmpfs | awk -v threshold="$THRESHOLD" '
NR>1 {
    usage=$5
    gsub("%","",usage)

    if (usage >= threshold)
        print "WARNING: " $6 " disk usage is " usage "%"
    else
        print "OK: " $6 " disk usage is " usage "%"
}' >> "$LOGFILE"

echo "Disk check completed." >> "$LOGFILE"
echo "" >> "$LOGFILE"
