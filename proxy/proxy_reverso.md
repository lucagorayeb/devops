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

- Servidor de balanceamento de carga global:  Para melhorar o balanceamento 
                                              de carga um site pode ser disponibilizado
                                              ao redor do globo. O proxy reverso envia
                                              os clientes para o servidor que está mais
                                              próximo a eles. Isso diminui a quanto as
                                              requisições e as respostas tem que viajar.

- Cache: O proxy reverso pode fazer cache do sistema, resultando em uma melhor performance.
         Se uma pessoa em Paris acessar um site através do proxy e esse conteúdo está 
         hospedado em Los Angeles, o proxy reverso de Paris pode salvar temporariamente
         a resposta que retornou do site caso outra pessoa que mora em Paris queira acessar.

- criptografia SSL/TLS: O serviço de criptografar e descriptografar podem ser muito
                       custoso para o servidor web. O proxy pode exercer essa função
                       de criptografar o dado que sai e descriptografar o dado que entra. 

## Diferença entre o proxy reverso e o load balancer

- Ambos são elementos presentes na arquitetura cliente-servidor.

- Ambos são intermediários entre a comunicação do cliente com o
  servidor. Ambos exercem funções para melhorar a performance.

- O balanceador de carga distribui as requisições do cliente 
  para garantir uma boa velocidade e funcionamento otimizado.
  Balanceadores de carga são utilizados geralmente quando o 
  site precisa de vários servidores, pelo fato de receber 
  muitas requisições. Isso torna o site mais confiável e o 
  trabalho do balanceador de carga é somente distribuir 
  entre os servidores.

- O proxy reverso pode ser implementado para um ou vários
  servidores. O proxy reverso serve como face pública do 
  site, pois evita de expor o IP real do site na rede.
  Adiciona uma camada extra de abstração e um controle de 
  fluxo para as requisições que chegam da internet.

- O proxy reverso aumenta o nível de segurança por que 
  não deixa nenhuma informação do seu site visível na 
  internet. Atacantes não consegue acessar de forma 
  direta para explorar falhas. Muitos proxies reversos 
  tem implementações que ajudam a evitar um DDos, seja 
  bloqueando o IP da requisição ou limitando o número de
  requisições para cada cliente.

- O proxy reverso aumenta a confiabilidade e flexibilidade... 