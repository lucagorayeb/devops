#! /usr/bin/env bash


#time_to_update=$(sleep 68400)
#time_to_update=$(sleep 10)
diretorio=$(pwd)
let contador=0 
ARQUIVO_LOG="$(pwd)/logs/log_backup"

mensagem_log(){
    echo "[$(data_atual)] [$1] $2" >> $ARQUIVO_LOG
}

verifica_limite_backups_velhos(){
    if [[ $(ls $diretorio/backup | wc -l) -eq 7 ]]; then
        $backup_mais_velho = $(econtra_backup_mais_velho)
        remove_backup_mais_velho $backup_mais_velho
    fi 
}

encontra_backup_mais_velho(){
    old_file=$(ls -ltr "$diretorio/backup/" | head -n 2 | tail -n 1 | sed s/.*\\s//)
    echo $old_file
}

data_atual(){
    echo $(date "+%d-%m-%Y_%H:%M:%S")
}

cria_arquivo_backup(){
    cp $diretorio/teste/nada.txt $diretorio/backup/"backup_$(data_atual)"
}


cria_arquivo_backup
if [ $? -ne 0 ]; then
    mensagem_log "ERRO" "backup falhou"
fi
mensagem_log "INFO" "backup bem sucedido"
verifica_limite_backups_velhos

 

