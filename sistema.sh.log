#!/bin/bash
DIR="$HOME/MONITORAMENTO"
LOG="$DIR/relatorio.log"

mkdir -p "$DIR"

{
echo " ============================================= "
echo " Monitoramento do sistema $(date) "
echo " ============================================="
echo " Uso da CPU"
uptime | awk -F'load average: ' '{print $2}'
echo "Uso da memória ram"
free -h
echo "Uso do disco"
df -h 
echo " 5 top  processos mais pesados"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6
echo " Ip da rede"
ip a
} > "$LOG"

echo " Relatório salvo em $LOG"

