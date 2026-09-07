## Terraform 

O terraform é uma linguagem utilizada para criar infraestrutura 
de forma completa.

O terraform é um ambiente pronto que é instalado na máquina.
A partir dessa instalação se faz necessário criar um diretório para 
que o arquivo de configuração do terraform seja criado. Geralmente utiliza-se 
o arquivo main.tf, isso não é uma boa prática, mas serve para estudar sobre
terraform.

Dentro do main.tf são congigurados os provedores do serviço de virtualização,
assim como os recursos que serão usados, como a imagem usada, e são adicionados
algumas informações sobre o ambiente propriamente dito, como o id da virtualização.

O terraform é inicializado dentro de um diretório a partir do comando terraform init.
A partir desse comando o que tiver sido congigurado no main.tf vai ser instalado. 
Alguns comandos do terraform são utilizados para fazer a checagem dos arquivos, como 
o comando terraform fmt que verifica se a formatação está correta, caso não esteja os
arquivos com a formatação errado são exibidos na tela. Outro comando usado para checagem 
é o terraform validate, que valida se a sintaxe dos arquivos está correta, caso não esteja 
exibe o nome do arquivo na tela.

O terraform vai criar o que foi colocado no arquivo de configuração depois de ser passado 
o comando terraform apply. Quando este comando é passado o terraform vai listar tudo o que
vai ser configurado e vai pedir uma confirmação no final para fazer a criação. 
