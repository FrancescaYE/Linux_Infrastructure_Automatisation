#!/bin/bash
echo "=============================="
echo "SERVER HEALTH CHECK"
echo "=============================="
echo "Date: $(date)"
# Partie CPU
seuil=80
cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
cpu_use=$(echo "100 - $cpu_idle" | bc)
cpu_use=${cpu_use%.*}

if [ $cpu_use -lt $seuil ]
then
echo "CPU USAGE: $cpu_use% - OK"
else
echo "CPU USAGE: $cpu_use% - WARNING"
fi



#Partie memory
mem_threshold=80
mem_total=$(free | grep "Mem:" | awk '{print $2}')
mem_used=$(free |grep "Mem:" | awk '{print $3}')
mem_usage=$((mem_used*100 / mem_total))
if [ $mem_usage -lt $mem_threshold ]
then
echo "Memory Usage: $mem_usage% - OK"
else
echo "Memory Usage: $mem_usage% - WARNING"
fi

#partie disk
disk_threshold=80
disk_use=$(df / | awk '$NF=="/" {print $5}')
disk_use=${disk_use%\%}


if [ $disk_use -lt $disk_threshold ]
then
echo "Disk usage: $disk_use% - OK"
else
echo "Disk usage: $disk_use% - WARNING"
fi 

#partie health
if [ $cpu_use -lt $seuil ]
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
echo "System status: $system_health"
echo "Report saved at: $(date)" >> health.log
echo "=============================="
