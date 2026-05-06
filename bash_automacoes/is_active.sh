#! /usr/bin/env bash

SERVICO="apache2.service"
DIRETORIO_LOG=./log
ARQUIVO_LOG="$DIRETORIO_LOG/log_apache"

verifica_se_diretorio_log_existe(){
        if [[ ! -d $DIRETORIO_LOG ]]; then
                mkdir $DIRETORIO_LOG
        fi
}

verifica_se_esta_ativo(){
        sudo systemctl is-active $SERVICO &> /dev/null
        codigo_saida=$?
        return $codigo_saida
}

data_atual(){
        echo $(date "+%d-%m-%Y %H:%M:%S")
}

mensagem_log(){
        echo "[$(data_atual)] [$1] $2" >> $ARQUIVO_LOG
}

mensagem_erro(){
        echo "[$(data_atual)] [ERROR] $SERVICO is not running" >> ./log/log_apache
}

mensagem_info(){
        echo "[$(data_atual)] [INFO]  reinicialazing $SERVICO" >> ./log/log_apache
}

mensagem_aviso(){
        echo "[$(data_atual)] [WARN]  achive the limit of trys to restart $SERVICO" >> ./log/log_apache
}

mensagem_funcionamento(){
        echo "[$(data_atual)] [INFO]  $SERVICO is running" >> ./log/log_apache
}

for i in {1..5}; do
        verifica_se_diretorio_log_existe
        verifica_se_esta_ativo
        if [[ "$?" -ne "0" ]]; then
                mensagem_log "ERRO" "$SERVICO is down"
                mensagem_log "INFO" "$i/5 try to restart $SERVICE"
                sudo systemctl restart $SERVICO
        else
                mensagem_funcionamento
                exit 0
        fi

        if [[ $i -eq 5 ]]; then
                mensagem_log "ERRO" "$SERVICO is down"
                mensagem_log "WARN" "achive the limit of trys to restart $SERVICO" 
                exit 1
        fi

        sleep 2
done



