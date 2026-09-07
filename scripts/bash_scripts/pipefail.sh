#! /usr/bin/env bash 

set -o pipefail
set -o noclobber

echo "first line" > file.txt
echo "second line" >> file.txt

sort somefile.txt | uniq || exit 100

echo "This line never runs"
exit 0

# set -e -> Sai do programa qualquer código de saída que não seja 0.
# set -u -> Mostra a linha que tem o erro, por exemplo de nome de variavel
#           sintaxe.
# set -x -> Printa todos os comandos executados no termninal
# set -o pipefail -> Mostra o erro no comando mais a direita da pipeline 
#




