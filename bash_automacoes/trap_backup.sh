#! /usr/bin/env bash

DIRETORIO_TMP=$(pwd)/tmp
DIRETORIO_BACKUP=backup_tmp

data_atual(){
    echo $(date "+%d-%m-%Y_%H:%M:%S")
}

cria_arquivos_bkp(){
    touch backup_file_$(data_atual).bkp
}

function captura_sinal_cancelamento(){
    trap 
}
while [[ true ]]; do 
    cria_arquivos_bkp
    sleep 10
done