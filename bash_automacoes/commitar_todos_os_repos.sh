#! /usr/bin/env bash
directorys=("bash" "c" "devops" "docker" "git" "ideias_de_codigo" "lanchonete-laravel" "library" "linux" "livros" "nginx" "php" "prep_concurso_publico" "projects" "python" "redes" "sql")
path="/home/luca/documents"
for directory in $directorys; do
    $(cd $path/$directory/)
    /home/luca/documents/bash/scripts/commitar_repo.sh
    $(cd)
done