#! /usr/bin/env bash
IFS=$'\n'
source .env
DIRETORIO_RAIZ='/home/luca/documents/livros/'

#function comando_docker(){
#    docker exec -it mysql-bash mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -e $1 $MYSQL_DATABASE 
#}

#comando_docker "SHOW TABLES;"

function user_interface(){
    if [[ $1 -eq "0" ]]; then
        do_selection
    elif [[ $1 -eq "1" ]]; then
        do_insertion
    else
        echo "Valor fora do esperado"
        exit 1
    fi    
}

function user_menu(){
    echo "[0] - Abrir"
    echo "[1] - Listar"
}

function select_action(){
    read -p "Selecione uma opção: " opcao
    user_interface $opcao
}

function do_selection(){
    echo "Faça sua query:"
    read -p "Qual tabela deseja consultar: " 
    comando_docker $query
}

function do_insertion(){
    read -p "Faça sua query: " query
    comando_docker $query
}

function children_directorys(){
    echo $(ls | wc -l)
}

function return_one(){
    echo 1
}

function map_book_directory(){
    contador=$(children_directorys)
    while [[ $contador -ne '0' ]]; do
        ls | head -n $((contador)) | tail -n 1
        contador=$((contador - 1))
    done
    #for i in {$(return_one)..$(children_directorys)}; do
    #    ls | head -n $i | tail -n 1
    #done
}

map_book_directory
