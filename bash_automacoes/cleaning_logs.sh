#! /usr/bin/env bash

if [[ ! -e "/home/luca/logs_mais_7_dias" ]]; then
    sudo find / -iregex .*log -ctime +7 &> /home/luca/logs_mais_7_dias
fi

INFILE=/home/luca/logs_mais_7_dias
#INDICE=0
#while read -r LINE
#do
#    array_aquivos_log[$INDICE]="$LINE"
#    INDICE=$((INDICE + 1))
#done < "$INFILE"

#echo ${array_aquivos_log[1]}

sudo tar -cf $(cat $INFILE) /home/luca/arquivos_logs_mais_7_dias


