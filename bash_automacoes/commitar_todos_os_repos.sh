#! /usr/bin/env bash
directorys=("bash" "c" "devops" "docker" "git" "ideias_de_codigo" "lanchonete-laravel" "library" "linux" "livros" "nginx" "php" "prep_concurso_publico" "projects" "python" "redes" "sql")
path="/home/luca/documents"
for directory in $directorys; do
    $(cd $path/$directory/)
    sleep 2
    /home/luca/documents/bash/scripts/commitar_repo.sh
    sleep 2
done