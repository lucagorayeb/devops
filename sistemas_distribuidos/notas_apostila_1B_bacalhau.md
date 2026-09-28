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
	
	A redundância 