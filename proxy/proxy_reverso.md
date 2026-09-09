# Proxy Reverso 

- O proxy reverso é um servidor que fica na frente do servidor web.

- São implementados para melhorar a segurança, performance e confiabilidade.

## O que é um proxy?

- Pode ser de forward proxy, proxy, servidor proxy ou web proxy. 
  É o servidor que fica em frente das máquinas clientes.

- Quando os clientes fazem um requisição para algum serviço na internet, 
  o proxy intercepta essa requisição e comunica ao servidor web, como se
  o homem do meio (middleman).

## Motivos para se usar um proxy

- Para evitar restrição de conteúdo: Caso esteja com acesso a somente uma parte
                                     limitada da internet. Um servidor proxy pode 
                                     ser usado para driblar essa restrição.

- Para fazer restrição de conteúdo: Limitar o acesso dos usuários a alguns sites.
                                    Muito usado por instituições. 

- Para proteger a identidade online: Caso alguém queira proteger ainda mais a sua privacidade
                                     essa pessoa pode usar o proxy para mascarar a sua identidade
                                     na rede.

## A diferença do proxy reverso

- O proxy reverso fica na frente dos servidores web. O clientes
  mandam as requisições e ele intercepta essas requisições no 
  edge network, depois o proxy reverso vai enviar as requisições 
  e receber as respostas do servidor web.

- A diferença entre proxy e proxy reverso é:
    
    proxy -> Impende que qualquer servidor de origem
             se comunique com o cliente.

    proxy reverso -> Impede que qualquer cliente se 
                     comunique com o servidor de origem.

## Benefícios do proxy reverso

- Balanceamento de carga: Serviços que recebem muitas requisições 
                          precisam ter um bom controle de fluxo do 
                          trafego da rede. O servidor proxy reverso 
                          faz a distribuição da quantidade de 
                          requisições entre os servidores de origem.

- Proteção contra ataques: Com um servidor de proxy reverso o serviço 
                           não precisa revelar o verdadeiro IP do servidor
                           de origem. Isso torna muito mais difícil para 
                           os atacantes fazerem um ataque DDoS.

- Servidor de balanceamento de carga global:  