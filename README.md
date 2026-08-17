# Disk Usage Analyzer with Automated Log Alerts

## 📌 Project Overview

A Linux-based disk monitoring project developed on **Red Hat Enterprise Linux** using **Bash scripting**.

The system checks filesystem disk usage, compares it with a predefined **80% threshold**, and records either an **OK** or **WARNING** status in a log file. **Cron** automates the monitoring process every 5 minutes.

---

## 🎯 Objectives

- Monitor disk usage in Red Hat Linux.
- Detect high disk utilization.
- Generate threshold-based alerts.
- Store monitoring results in a log file.
- Automate disk monitoring using Cron.

---

## 🛠️ Technologies Used

- Red Hat Enterprise Linux
- Bash Shell Scripting
- AWK
- Linux Commands
- Cron
- Log Files

---

## ⚙️ How It Works

1. `df` checks the filesystem disk usage.
2. The Bash script extracts the usage percentage.
3. The usage is compared with the **80% threshold**.
4. Below 80% → **OK**
5. 80% or above → **WARNING**
6. The result is stored in `disk_alert.log`.
7. Cron runs the script automatically every 5 minutes.

---

## 🚨 Threshold

The project uses an **80% disk usage threshold**.

```bash
THRESHOLD=80
```

| Disk Usage | Status |
|---|---|
| Below 80% | ✅ OK |
| 80% or above | ⚠️ WARNING |

---

## 💻 Important Commands

### Check Disk Usage

```bash
df -P -x tmpfs -x devtmpfs
```

### Run the Monitoring Script

```bash
./disk_check.sh
```

### View Recent Log Entries

```bash
tail -15 /opt/linux-monitor/logs/disk_alert.log
```

### View Cron Schedule

```bash
crontab -l
```

### Check Cron Service

```bash
systemctl status crond
```

---

## ⏰ Cron Automation

The monitoring script is scheduled to run every **5 minutes**:

```text
*/5 * * * * /opt/linux-monitor/scripts/disk_check.sh
```

This allows disk usage to be monitored automatically without manually running the script.

---

## 📄 Log-Based Alerts

Monitoring results are stored in:

```text
/opt/linux-monitor/logs/disk_alert.log
```

### Normal Condition

```text
OK: / disk usage is 28%
OK: /boot disk usage is 47%
Disk check completed.
```

### Threshold Crossed

```text
WARNING: / disk usage is 85%
Disk check completed.
```

---

## 📸 Screenshots

The repository includes screenshots showing:

- Disk usage
- Disk monitoring script
- Log output
- Cron configuration

---

## ✅ Advantages

- Simple and lightweight.
- Automated disk monitoring.
- Threshold-based warning system.
- Maintains monitoring logs.
- Uses standard Linux utilities.
- Easy to customize.

---

## 🚀 Future Scope

- Graphical disk usage dashboard.
- Daily and weekly reports.
- Multiple configurable thresholds.
- Remote monitoring of Linux systems.
- Database-based monitoring.
- Web-based monitoring interface.

---

## 🏁 Conclusion

The **Disk Usage Analyzer with Automated Log Alerts** provides a simple and practical solution for monitoring disk utilization on Red Hat Linux.

The project combines **Bash scripting, AWK, Linux commands, log files, and Cron** to automate disk monitoring and generate alerts when the configured threshold is crossed.

---

## 👨‍💻 Author

**Aryan Gurav**  
Department of Electronics and Computer Science  
Shah & Anchor Kutchhi Engineering College, Mumbai
