#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n'

YELLOW="\e[33m"
RESET_COLOR="\e[0m"
DATE=$(date +'%Y-%m-%d')
CPU_USAGE=$(free -h | awk '/Mem:/ {print $3}')
DISC_USAGE=$(df --output=pcent -h /)
DISC_USAGE="${DISC_USAGE:6:10}"

declare NUMBER_DISC_USAGE="${DISC_USAGE%%%}"

if [[ "$UID" -ne 0 ]]; then
	printf '%s\n' "Permisson denied! root priviledge necessary!"
	exit 1
fi

if [[ "$NUMBER_DISC_USAGE" -gt 40 ]]; then
	echo -e "$DATE [$YELLOW ALERT $RESET_COLOR] DISC USAGE IS IN $NUMBER_DISC_USAGE%! YOU MUST EXPAND YOUR DISC SPACE!" >> /var/log/sys_alert.log
	printf '%s\n' "CPU USAGE: $CPU_USAGE" 
	printf '%s' "DISC_USAGE: $NUMBER_DISC_USAGE% "
	printf "\e[31m%s\e[0m\n" "Critical situation! YOU MUST EXPAND YOUR DISC SPACE!" 
fi
