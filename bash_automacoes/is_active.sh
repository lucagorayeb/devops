#! /usr/bin/env bash

SERVICO="apache2.service"
DIRETORIO_LOG=./log
ARQUIVO_LOG="$DIRETORIO_LOG/log_apache"
USER=$(id --user)

verifica_se_root(){
        if [[ $USER -ne "0" ]];then
                echo "Acsses denied (root privilege)"
                exit 1
        fi
}

verifica_se_diretorio_log_existe(){
        if [[ ! -d $DIRETORIO_LOG ]]; then
                mkdir $DIRETORIO_LOG
        fi
}

verifica_se_esta_ativo(){
        systemctl is-active $SERVICO &> /dev/null
        codigo_saida=$?
        return $codigo_saida
}

data_atual(){
        echo $(date "+%d-%m-%Y %H:%M:%S")
}

mensagem_log(){
        echo "[$(data_atual)] [$1] $2" >> $ARQUIVO_LOG
}

verifica_se_root
verifica_se_diretorio_log_existe

for i in {1..5}; do
        verifica_se_esta_ativo
        if [[ "$?" -ne "0" ]]; then
                mensagem_log "ERRO" "$SERVICO is down"
                mensagem_log "INFO" "$i/5 try to restart $SERVICO"
                systemctl restart $SERVICO
        else
                mensagem_log "INFO" "$SERVICO is running"
                exit 0
        fi

        if [[ $i -eq 5 ]]; then
                mensagem_log "ERRO" "$SERVICO is down"
                mensagem_log "WARN" "achive the limit of trys to restart $SERVICO" 
                exit 1
        fi

        sleep 2
done





