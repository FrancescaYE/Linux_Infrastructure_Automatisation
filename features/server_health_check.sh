#!/bin/bash
LOGFILE="./logs/health.log"
echo "" | tee -a "$LOGFILE"

echo "==============================" | tee -a "$LOGFILE"
echo "SERVER HEALTH CHECK" | tee -a "$LOGFILE"
echo "==============================" | tee -a "$LOGFILE"
echo "Date: $(date)" | tee -a "$LOGFILE"

cpu_threshold=80
mem_threshold=80
disk_threshold=80
cpu_use=0
mem_usage=0
disk_use=0

# Partie CPU
check_cpu()
{
local cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
cpu_use=$(echo "100 - $cpu_idle" | bc)
cpu_use=${cpu_use%.*}

if [ $cpu_use -lt $cpu_threshold ]
then
echo "CPU USAGE: $cpu_use% - OK" | tee -a "$LOGFILE"
else
echo "CPU USAGE: $cpu_use% - WARNING" | tee -a "$LOGFILE"
fi

}
check_cpu


#Partie memory
check_memory()
{
local mem_total=$(free | grep "Mem:" | awk '{print $2}')
local mem_used=$(free |grep "Mem:" | awk '{print $3}')
mem_usage=$((mem_used*100 / mem_total))
if [ $mem_usage -lt $mem_threshold ]
then
echo "Memory Usage: $mem_usage% - OK" | tee -a "$LOGFILE"
else
echo "Memory Usage: $mem_usage% - WARNING" | tee -a "$LOGFILE"
fi

}
check_memory


#partie disk
check_disk()
{
disk_use=$(df / | awk '$NF=="/" {print $5}')
disk_use=${disk_use%\%}


if [ $disk_use -lt $disk_threshold ]
then
echo "Disk usage: $disk_use% - OK" | tee -a "$LOGFILE"
else
echo "Disk usage: $disk_use% - WARNING" | tee -a "$LOGFILE"
fi 

}
check_disk

#partie health
check_system_health()
{
local cpu_health
local mem_health
local disk_health
local system_health

if [ $cpu_use -lt $cpu_threshold ]
then
cpu_health="OK"
else
cpu_health="WARNING"
fi

if [ $mem_usage -lt $mem_threshold ]
then
mem_health="OK"
else
mem_health="WARNING"
fi

if [ $disk_use -lt $disk_threshold ]
then
disk_health="OK"
else
disk_health="WARNING"
fi


if [ "$cpu_health" = "OK" ] && [ "$mem_health" = "OK" ] && [ "$disk_health" = "OK" ]
then
system_health="HEALTHY"
else
system_health="WARNING"
fi
echo "System status: $system_health" | tee -a "$LOGFILE"


}
check_system_health
echo "Report saved at: $(date)" | tee -a "$LOGFILE"
echo "==============================" | tee -a "$LOGFILE"
echo "" | tee -a "$LOGFILE"
