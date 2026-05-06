#! /usr/bin/env bash

SERVICO="apache2.service"

sudo systemctl is-active $SERVICO &> /dev/null

for i in {1..5}; do
        if [[ $? -ne 0 ]]; then
                echo "[$(date "+%d-%m-%Y %H:%M:%S")] [ERROR] apache is not running" >> ./log/log_apache
                echo "[$(date "+%d-%m-%Y %H:%M:%S")] [INFO]  reinicialazing apache" >> ./log/log_apache
                sudo systemctl restart $SERVICO
        else
                echo "[$(date "+%d-%m-%Y %H:%M:%S")] [INFO]  apache is running" >> ./log/log_apache
                exit 0
        fi

        if [[ $i -eq 5 ]]; then
                echo "[$(date "+%d-%m-%Y %H:%M:%S")] [ERROR] apache is not running" >> ./log/log_apache
                echo "[$(date "+%d-%m-%Y %H:%M:%S")] [INFO]  achive the limit of trys to restart apache" >> ./log/log_apache
                exit 1
        fi
done

