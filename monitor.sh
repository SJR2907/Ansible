#!/bin/bash

# Variables
ADMIN="admin@example.com"
LOG_FILE="./logs/health_$(date +%F).log"
THRESHOLD_CPU=80
THRESHOLD_MEM=75
THRESHOLD_DISK=90
SERVICES=("nginx" "mysql")

# Timestamp
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Functions
log_msg() {
    echo "[$DATE] $1" | tee -a "$LOG_FILE"
}

send_alert() {
    echo "$1" | mail -s "$2" $ADMIN
}

check_cpu() {
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
    if (( $(echo "$CPU_USAGE > $THRESHOLD_CPU" | bc -l) )); then
        send_alert "High CPU usage: $CPU_USAGE%" "CPU Alert"
        log_msg "⚠️ High CPU usage detected: $CPU_USAGE%"
    fi
}

check_memory() {
    MEM_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    if (( $(echo "$MEM_USAGE > $THRESHOLD_MEM" | bc -l) )); then
        send_alert "High Memory usage: $MEM_USAGE%" "Memory Alert"
        log_msg "⚠️ High Memory usage: $MEM_USAGE%"
    fi
}

check_disk() {
    DISK_USAGE=$(df -h / | tail -1 | awk '{print $5}' | sed 's/%//')
    if (( $DISK_USAGE > $THRESHOLD_DISK )); then
        send_alert "High Disk usage: $DISK_USAGE%" "Disk Alert"
        log_msg "⚠️ High Disk usage: $DISK_USAGE%"
    fi
}

check_services() {
    for svc in "${SERVICES[@]}"; do
        if ! systemctl is-active --quiet "$svc"; then
            log_msg "🔴 $svc is DOWN. Restarting..."
            systemctl restart "$svc"
            send_alert "$svc was down and has been restarted." "$svc Auto-Restarted"
            log_msg "✅ $svc restarted."
        fi
    done
}

# Run checks
log_msg "✅ Monitoring started..."
check_cpu
check_memory
check_disk
check_services
log_msg "✅ Monitoring complete."

5. 🕔 Set Up Cron Job (Run every 5 minutes)

crontab -e
# Add this line
*/5 * * * * /home/youruser/projects/server-monitoring/monitor.sh

6. ✅ Test It
Stop a service: sudo systemctl stop nginx

Fill disk with dummy files or run a CPU-intensive loop to test alerts

Check logs and alert emails

📦 Project Output
Logs saved with timestamp

Alerts sent on high resource usage

Auto-healing of services

Real-time Linux admin experience