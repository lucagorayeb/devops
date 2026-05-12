#! /usr/bin/env bash

DIRETORIO=$(pwd)/backup
DIRETORIO_BACKUP_TMP=backup_tmp
ARQUIVO_LOG=$(pwd)/logs/log_backup

function verifica_se_root(){
   if [[ $USER -ne "0" ]];then
        echo "Acsses denied (root privilege)"
        exit 1
    fi
}

function data_atual(){
    echo $(date "+%d-%m-%Y_%H:%M:%S")
}

function diretorio_existe(){
    if [[ -d $DIRETORIO ]]; then 
        mkdir $DIRETORIO
    fi
}

function diretorio_bkp_tmp_existe(){
    if [[ -d $DIRETORIO_BACKUP_TMP ]]; then 
        mkdir $DIRETORIO_BACKUP_TMP
    fi
}

function cria_arquivos_bkp(){
    touch $DIRETORIO_TMP/$DIRETORIO_BACKUP/backup_file_$(data_atual).bkp
}

function mensagem_log(){
    echo "[$(data_atual)] [$1] $2" >> $ARQUIVO_LOG
}

function trigger_sigint(){
    echo "Processo foi interrompido!"
    rm $DIRETORIO_TMP/$DIRETORIO_BACKUP/*
    mensagem_log "WARN" "Backup interrompido"
    exit 0     
}

function trigger_sigstp(){
    rm $DIRETORIO_TMP/$DIRETORIO_BACKUP/*
    mensagem_log "WARN" "Backup interrompido"
    exit 0
}

trap trigger_sigint SIGINT 

cria_arquivos_bkp
sleep 10
mensagem_log "INFO" "Backfeito com sucesso"