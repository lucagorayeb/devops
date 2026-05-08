#! /usr/bin/env bash

# Criar um processo
# Gerar um arquivo de log 
# Verificar se o arquivo de log é maior que um certo número
# Se for maior criar outro arquivo de log e compacta o antigo
# Se tiver mais de 5 arquivos antigos o mais antigo desses vai ser apagado. 

CONTADOR=0
DIRETORIO="./log"
USER=$(id --user)

verifica_se_root(){
    if [[ $USER -ne "0" ]];then
        echo "Acsses denied (root privilege)"
        exit 1
    fi
}

verifica_se_diretorio_log_existe(){
    if [[ ! -d $DIRETORIO ]]; then
        mkdir $DIRETORIO
    fi
}

start_yes_process(){
    arquivo="$DIRETORIO/teste_yes_$1"
    yes "NADA" > $arquivo &
}

get_process_number(){
    PID_YES=$(jobs -l | sed s/.*[\+]// | sed s/[P].*//)
    echo $PID_YES
}

kill_yes_process(){
    kill -9 $1
}

is_log_file_to_big(){
    if [[ $(du -b $(get_the_newest_log_file) | sed s/\\s.*//) -gt 1000 ]]; then
        kill_yes_process $(get_process_number)
        compact_old_log_file 
        start_yes_process $((CONTADOR+1))
    fi
}

compact_old_log_file(){
    gzip  "$DIRETORIO/$(get_the_oldest_log_file)"
}

get_the_oldest_log_file(){
    old_file=$(ls -ltr "$DIRETORIO/" | head -n 2 | tail -n 1 | sed s/.*\\s//)
    echo $old_file
}

are_more_then_five_log_files(){
    if [[ $(ls $DIRETORIO | wc -l) -gt 5  ]]; then
        remove_oldest_log_file $(get_the_oldest_log_file)
    fi
}

remove_oldest_log_file(){
    rm "$DIRETORIO/$1"
}

kill_all_yes_process(){
    killall yes
}

get_the_newest_log_file(){
    new_file=$(ls -lt | head -n 2 | tail -n 1 | sed s/.*\\s//)
    echo $new_file
}

verifica_se_root
verifica_se_diretorio_log_existe
start_yes_process $CONTADOR
get_process_number
#kill_yes_process $(get_process_number)
is_log_file_to_big
kill_all_yes_process