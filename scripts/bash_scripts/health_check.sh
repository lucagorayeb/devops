#! /usr/bin/env bash

USED_MEMORY=$(free --si -h | awk '/^Mem:/ {print $3}')
FREE_MEMORY=$(free --si -h | awk '/^Mem:/ {print $4}')

USED_ROOT_SPACE=$(df --output=used -h / | awk '/Used/ {print $2}')
FREE_ROOT_SPACE=$(df --output=avail -h /)
PERCENT_USED_ROOT_SPACE=$(df --output=pcent -h /)

MORE_USAGE_CPU_PROCESS=$(ps -a --sort=-cpu --format uid,pid,%cpu | head -n 5)

echo 'RAM USAGE'
echo 'USED RAM:' "${USED_MEMORY}"
echo 'FREE RAM:' "${FREE_MEMORY}"
echo ''
echo 'DISC USAGE'
echo 'USED DISC:' "${USED_ROOT_SPACE:6:10}"
echo 'FREE DISC:' "${FREE_ROOT_SPACE:6:10}"
echo ''
echo 'PROCESS THAT CONSUME MORE CPU'
echo "$MORE_USAGE_CPU_PROCESS"
echo "$PERCENT_USED_ROOT_SPACE"
# if [[ "${PERCENT_USED_ROOT_SPACE}" -ge 80 ]]; then
#     echo ''
#     echo "DISC USAGE OVER 80% !!!"
#     echo "ADD EXTRA SPACE!"
#     exit 1
# else
#     exit 0
# fi
