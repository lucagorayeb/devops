## Mainframes

Máquinas gigantescas que ocupavam salas, pesavam toneladas. Eram totalmente centralizadas e 
todo o processamento dos dados era feito nas mesmas. Isso conferia uma grande capacidade e 
grande disponibilidade. Os problemas eram que todos os dados eram processados somente nele, se 
o servidor parasse o serviço também parava. Apesar de inúmeras outras desvantagens algumas 
grandes empresas ainda utilizam mainframes (mais modernos é claro) para armazenar suas informações 
e proteger seus dados sigilosos.

## Processamento em Lote

batch processing (processamento em lotes) -> Varias transações  eram agrupadas e processadas 
sequencialmente, sem interação  direta com o usuário durante sua exexução. 

Esse processamento era muito usado com os grandes mainframes de antigamente. 

## Time Sharing

O time sharing (compartilhamento de tempo) é o compartilhamento da CPU pelos processos, 
onde cada um possui sem tempo para ser processado. O tempo do utilizado por processo é 
imperceptível, para nós humanos é como se fosse simultaneo.

## Minicomputadores

Os minicomputadores trouxeram um grande avanço ao permitir de diferentes setores pudessem ter 
sua própria base de dados, mas criou um gargalo conhecido como ilhas de informação. As ilhas 
ocorriam quando um setor ou local da empresa tinha sua própria base de dados, mas essas bases 
ficam isoladas das outras podendo causar inconsistência de dados ou duplicações.

## Cliente Servidor 

A arquitetura cliente-servidor foi criada pela necessidade de  haver a comunicação de 
diferentes pessoas ou máquinas a um mesmo servidor centralizado. No começo do modelo 
cliente servidor era conhecido como arquitetura de duas camadas. O cliente renderizava 
a interface gráfica  e executava um pouco da lógica  enquanto o servidor servia de banco de dados. 
Mesmo que seja antiga a arquitetura cliente servidor ainda é amplamente usada, mas sofreu algumas 
evoluções.

## Web 

Com o surgimento da internt a arquitetura cliente servidor passou por mudanças, deixou de 
ser uma arquitetura de duas camadas para se tornar uma arquitetura de tres camadas. 
Essa arquitetura de 3 camadas faz a divisão entre cliente que só faz renderizar as 
páginas e enviar dados, o servidor que faz a lógica de negócio com as requisições e a 
última camada é a de armazenamento no banco de dados.

## Computação em nuvem

A computação em nuvem é o compartilhamento de recursos, sejam serviços web ou infraestrutura de TI. 
Os benefícios da cloud são que as empresas de menor não precisam mais gastar rios de dinheiro com a 
instalação de hardware, somente pagar para utilizar recursos de outra empresa. A cloud fornece um 
nível de dispolibilidade altíssimo e escalabilidade. A disponibilidade é devido ao fato de que caso 
um servidor pare de funcionar outro vai estar disponível para a utilização. A escalabilidade é a 
capacidade de crescer, existem dois tipos de escalabilidade a vertical que é apenas a adição de 
recursos a um único servidor, adicionar memória de trabalho ou armazenamento, adicionar processamento 
e entre outros. A escalabilidade horizontal é quando adicionamos um outro servidor ao ambiente.

## Computação de borda (edge)

A computação de borda é muito utilizada para dispositivos autônomos pois possibilitou que a tomada 
de decisão fosse feita no próprio dispositivo ao invés de enviar o dado e esperar a resposta do servidor.
Isso causaria problema de latência pela quantidade de dados sendo enviada, o atraso deviso a distância 
física que poderia acarretar em consequências reais.

## Concorrência 

Concorrência é a capacidade de um sistema computacional executar ou gerenciar diversas atividades 
que ocorrem durante um mesmo intervalo de tempo.

Se não existisse concorrência somente um usuário poderia usar o sistema por vez. Os benefícios 
da concorrência são:
 - A melhor utilização dos recursos: Servidores permanecem ocupados atendendo diversas 
 solicitações reduzindo períodos de ociosidade.

- Maior desempenho: Diversas operações podem avançar simultaneamente, diminuindo o 
tempo médio de resposta percebido pelos usuários.

- Maior capacidade de atendimento: Milhares de usuários conseguem utilizar o sistema ao mesmo tempo.

- Melhor experiência do usuário: O sistema permanece respondendo mesmo quando há muitos 
acessos simultâneos.

## Paralelismo 

O paralelismo é constatemente confundido com a concorrência, mas são conceitos diferentes. 
O paralelismo é a execução simultânea de tarefas em diferentes processadores ou núcleos, 
exige recursos físicos capazes de executar tarefas ao mesmo tempo, aumenta o desempenho por 
execução simultânea.


## Transparência 

Transparencia é uma forma de disponibilizar tal recurso ou serviço sem que a parte que utiliza saiba
os processos tecnicos ou as configurações necessárias para o funcionamento do sistema.

Existem vários tipos de Transparência:

	- Transparência de Acesso:
		Permite que os recursos sejam utilizados da mesma forma, idenpendentemente de sua
		localização ou da tecnologia empregada.
		
		Exemplo:
			Um arquivo armazenado em um servidor remoto pode ser acessado como se estivesse 
			no computador local.
	
	- Transparência de Localização:
		Oculta a localização física dos recursos. O usuário utiliza um serviço sem saber em qual 
		servidor ele está sendo executado. 
		
		Exemplo: 
			Acesso ao correio eletrônico corporativo.
		
	- Transparência de Migração:
		Permite que processos ou serviços sejam transferidos para outro servidor sem interromper
		sua utilização.
		
		Exemplo:
			A migração de máquinas virtuais durante a manutenção programada.
			
	- Transparência de Replicação:
		Oculta a existência de múltiplas cópias dos mesmos dados. O usuário trabalha normalmente, 
		mesmo quando existem diversos servidores armazenando informções idênticas.
		
		Exemplo: 
			Banco de dados replicados para aumentar a disponibilidade.
			
	- Transparência de Concorrência:
	
		Permite que vários usuários compartilhem recursos simultaneamente sem perceber interferências 
		causadas pelas demais operações.
		
		Exemplo:
			Diversos estudantes realizando matrícula ao mesmo tempo em um sistema acadêmico.
			
	- Transparência de Falhas:
		Oculta, sempre que possível, falhas ocorridas em componentes do sistema. Caso um servidor deixe
		de funcionar, outro poderá assumir automaticamente seu lugar.
		
		Exemplo:
			Serviços de streaming que permanecem disponíveis mesmo durante falhas em parte da 
			infraestrutura.
			
## Escalabilidade 

	A escalabilidade é a capacidade do sistemas crescer sem que isso afete o seu desempenho.
	
	Existem tipos de escalabilidade:
	
		Vertical: Nessa escalabilidade um único servidor recebe um upgrade.
		
		Horizontal: Nessa escalabilidade um outro servidor é adicionado aos servidores 
					já existentes.
					
		Geografica: Existem algumas empresas que precisam fornecer serviço ao redor do mundo
					e para isso fazem a distribuição de servidores ao longo do globo.
		
		Administrativa: É a capacidade de gerenciar grandes ambiente computacionais utilizando 
						ferramentas de automação, monitoramento e gerenciamento.
						
## Disponibilidade 

	A disponibilidade é a capacidade do sistema se manter disponivel para o acesso. Isso pode ser 
	promovido por meio da redundância, monitoramento e balanceamento de carga. Não é possível ficar 
	disponível o tempo todo, mas pode se reduzir o risco de que isso aconteça. 
	
	A redundância é uma das forma de se garantir a disponibilidade. A redundancia permite que caso 
	um servidor apresente problemas outro pode assumir o seu lugar de forma imediata, tornando o 
	sistema transparente.

## Tolerancia a Falhas

A tolerancia a falhas não é evitar que o serviço fique no as 24/7, mas sim minimizar que acidentes 
que possam causar queda no serviço aconteçam. Grande parte das falhas que ocorrem são causadas pelos 
seres humanos. Para que isso seja evitado, processos de e revisão de código, configuração e documentação 
devem ser sempre seguidos.

Existem outros tipos de tolerancia que podem ocorrer em sistemas distribuídos como a falha do hardware, 
processador queimado, memória ram com defeito e entre outros. Falhas se software também são possíveis 
como bugs, erros de atualização de dependências. O último tipo de falha é o de comunicação, caso algum 
enlance ou fibra tenha sido rompida ou parado de funcionar. 

A tolerancia diz respeito a como irão responder a alguma falha. As medidas de reposta são a redundancia, 
seja de banco de dados ou de servidor.

## Heterogeneidade

A heterogeneidade é a capacidade do sistema de integrar diferentes tecnologias. Permitindo que haja o 
funcionamento harmônico entre essas diferentes tecnologias. 

Existem vários tipos de heterogeneidade:
	- Hardware
	- Software
	- Banco de dados
	- Linguagens de programação
	- Protocolos de comunicação

A heterogeneidade pode ser superada com a utilização de algumas ferramentas.

São elas:

	- Protocolos Padronizados: protocolos como TCP/IP, HTTP e HTTPS definem regras comuns para a 
	comunicação entre dispositivos e aplicações.

	- APIs(Interfaces de Programação de Aplicações): As APIs permitem que sistemas desenvolvidos em 
	tecnologias diferentes troquem informações de forma padronizada.

	- Middleware: O middleware atua como uma camada intermidiário entre aplicações distribuídas, 
	ocultando diferenças tecnolóficas e facilitando a comunicação entre componentes heterogêneos.

	- Padrões Abertos: A adoção de padões amplamente aceitos pela indústria reduz problemas de 
	compatibilidade e facilita a integração entre platagorma distintas.


## Arquitetura cliente servidor 

Essa arquitetura é uma das formas básicas e mais importantes de arquitetura. A arquitetura 
cliente-servidor é uma forma de comunicação onde a um cliente que se comunica com um servidor através da 
rede. Essa arquitetura permitiu que os serviços fossem centralizados, a manutenção se torna-se mais barata
e a utilização do sistema pelos usuários também. A arquitetura cliente-servidor funciona graças aos 
conceitos de sistemas distribuídos, pois essa arquitetura simplificada torna transparente todos os 
balanceadores de carga, replicadores, tolerância a falhas e a disponibilidade.


## Arquitetura 3 camadas

A arquitetura 3 camadas tem o objetivo de criar separações lógicas para lidar com o processos de
desenvolvimento do sistema. Cada camada possui uma função específica dentro do sistema. As camadas 
são:

	Apresentação: Camada destinada ao usuário, onde o mesmo interage, faz solicitações e 
				  requisições.
				  
	Negócios: A camada de negócios é reponsável pelo tratamento e polimento dos dados que vem do usuário. 
			  Assim que são devidademente tratados são enviados para a camada de dados.
			  
	Dados: A camada responsável pela persistência dos dados no banco de dados.
	
A organização em camada promove uma melhor organização, baixo acoplamento para com o sistema. Tornando 
o sistema mais fácil de manusear e concertar.


## Arquitetura N camadas

A arquitetura N camadas é uma evolução da arquitetura 3 camadas. A diferença entre as duas é que na arquitetura N camadas o sistemas pode aderir mais camadas se necessário para cuidar de outros aspectos. Assim separando as reponsabilidades de uma forma mais clara.

Se faz necessário quando o sistem possui vários tipos de usuários e necessita integração com outros sistemas.

## P2P

O modelo peer-to-peer é um modelo de sistema distribuido que é totalmente descretralizado. 
Cada integrante dessa rede (peer/nó/seed) pode atuar como cliente, solicitando recurso, e como servidor, disponibilizando o recurso. 

Isso faz com que cada integrante possa enviar ou pegar contéudo de outro integrante. A medida que mais usuários se conectam a rede melhor ela fica. 

Tem a vantagem de não depender de um servidor central para fazer a distribuição do arquivo, mas tem a disvantagem de segurança e de que uma seed pode entrar e sair a qualquer momento diminuindo a eficiência da rede.

## Cluster

Cluster são um conjunto de máquinas que trabalham de forma organizada e coordenada para atingir ou garantir uma finalidade.

Um cluster é um tipo de sistema distribuído, mas nem todo sistema distríbuido é um cluster.

As funções que um cluster pode realizar são a de alta disponibilidade, balanceamento de carga, escalabilidade e processamento em paralelo.

Cada computador que faz parte de um cluster é chamado de nó.

Os nós trabalham em conjunto para atingir os objetivo desejado.

## Grid Computing 

A computação de grade tem o foco principal no compartilhamento de recursos e de informações ao longo da rede. 

A grid não precisa ter o mesmo domínio administrativo, a mesma finalidade e nem estar no mesmo local. 

A grid computing é exemplificada pela arquitetura P2P.

## Microsserviços

Os microsserviços são uma arquitetura que se baseia no isolamento de cada serviço. 

A comunicação entre esses diferentes serviços deve ser feita por meio de um interface comum, geralmente uma API. 

Os microsserviços promovem interdependencia dos outros serviços, o que facilita a manutenção, o isolamento de falhas, escalabilidade independente e flexibilidade tecnologica.

Essa arquitetura apresenta alguns desafios como a latência de rede pelo trafego dos dados, monitoramento de diferentes serviços, autenticação e autorização, consistência dos dados e rastreamento de requisições. 
## Teorema CAP ou Teorema de Brewer

O CAP diz respeito ao que o sistema levar em consideração para o que foi projetado para fazer.

C -> Quer dizer consistencia, os dados estão sempre atualizados.

A -> Quer dizer disponibilidade. Os serviço está disponível e responde todas as requisições.

P -> Quer dizer tolerancia a falhas na rede. O sistema funciona se tiver falha entre os nós.

Na teoria só tem como escolher 2 de 3, pois como projetistas devemos sempre adotar que a rede não é confiável, enlaces se rompem entre outros motivos que tornam a rede não confiável.

As combinações de implementação dependem da arquitetura adotada pelo sistema.

Sistemas Monolitos e Cliente-servidor Tradicional devem ter o foco em CP/CA. Sistemas que não possuem distribuição de dados em diferentes nós não precisa se preocucar com a rede somente se infraestrutura única estiver no ar.

Microsserviços com Bancos de Dados Isolados devem ter foco em AP ou CP por serviço. Como esses dependem de nós de rede deve se decidir se preservará a consistência, CP, ou se será a diponibilidade, AP, depende dos requisitos do sistema.

Arquitetura P2P e Grids devem ter foco em AP. Devido a alta volatilidade dos nós esses sistemas adotam o AP para garantir que o serviço está o máximo tempo dispnível.

## Comunicação entre processos

Os processos são a forma que um computador tem de executar tarefas. Geralmente alguns processos necessitam se comunicar com outros processos e por isso se faz necessário o IP, Inter-Process Communication, que é um conjunto de mecanismos utilizados para permitir a comunicação e a coordenação entre processos.

Essa comunicação pode ocorrer em uma mesma máquina ou em máquinas diferentes, no segundo caso a comunicação também depende da infraestrutura de rede para funcionar corretamente.

Os processos se comunicam através de mensagens. 

processo A -> mensagem -> processo B

ou, quando há resposta.

processo A -> requisição -> processo B -> resposta -> processo A

Essa comunicação por mensagens pode acontecer de forma síncrona ou assíncrona. A comunicação síncrona faz um solicitação e aguarda uma resposta. A comunicação assíncrona faz uma solicitação, mas não fica esperando por uma resposta.

## Socket 

Sockets são um ponto de comunicação (interface) entre uma rede. Para um socket se comunicar com outro se faz necessário alguns parametros como o endereço do outro computador (IP), a porta por onde vai ocorrer a conexão e o protocolo que vai ser utilizado para trocar os dados.


O socket TCP é muito utilizado em mecanismos de conexões cliente-servidor. Cada elementotem sua função:

Cliente -> Cria o socket, informa o endereço e a porta para o servidor, solicita a conexão, envia e recebe dados e encerra a conexão.

Servidor -> Cria o socket, associa o socket a um endereço de uma porta, coloca o socket em estado de espera, aguarda uma conexão, aceita a conexão de um cliente e recebe e envia dados. 

O processo pode ser representado como:

Servidor: 
socket -> bind -> listen -> accept -> comunication

Cliente:
socket -> connect -> send/request -> close

 O socket UDP é o processo que não é orientado a conexões igual ao TCP, por esse motivo o UDP não garante a entrega ele somente envia o datagrama entre processos. O benefício do UDP é que a comunicação é mais rápida pois não necessita fazer o handshake.

## TCP/UDP

O protocolo TCP é um protocolo que é orientado a conexão. Ele garante uma entrega ordenada, confiável, com um fluxo de bytes  entre outras características. A garantia desse serviço é dada pelo handshake de 3 vias. Esse handshake é a forma que o TCP estabelece o canal de comunicação para trocar dados.

O protocolo UDP é bem mais simples que o TCP. O UDP não é orientado a conexões, portanto ele não entrega nenhuma garantia que o TCP possui e nem estabelece um canal de comunicação previamente. O protocolo envia os dados de forma unidirecional para o destino.

A utilização do UDP ou do TCP depende dos requisitos do sistema. Caso a ordem de entrega e a garantia da entrega sejam necessárias o TCP é o mais indicado. Se a entrega mais rápida for a prioridade o UDP é o mais indicado.
