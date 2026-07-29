# Kubernetes 

Node -> O "node" é um computador/servidor. Vários nodes são unidos para formar um cluster.

Control plane -> Um conjunto de nodes no cluster dedicados a performar tarefas dos sistema. 
                 Os nodes que fazem parte do control plane são chamados de "control plane nodes".

Data plane -> Um conjunto de nodes no cluster dedicados a rodar os workloads dos usuario.
              Os nodes que fazem parte do data plane são chamados de "nodes de trabalho" ou "nodes trabalhadores".

Cluster 
+------------------------------------------------------------+
| Control Plane                                              | 
|                                                            |
| +---------------+ +---------------+ +---------------+      |
| | Control plane | | Control plane | | Control plane | ...  |
| | node 0        | | node 1        | | node 2        |      |
| +---------------+ +---------------+ +---------------+      |
|                                                            |
|                                                            |
+------------------------------------------------------------+

+------------------------------------------------------------+
| Data Plane                                                 |
|                                                            |
| +---------------+ +---------------+ +---------------+      |
| | worker node 0 | | worker node 1 | | worker node 2 | ...  |
| +---------------+ +---------------+ +---------------+      |
|                                                            |
|                                                            |
+------------------------------------------------------------+

## Componentes do sistema do kubernetes

O kubernetes são compostos por vários sistemas menores:

- etcd: Armazena a chave-valor usado para armazenar todos os dados do cluster.
        Serve como origem para o estado do cluster e as configurações.

- kube-apiserver: O frontend do control plane do kubernetes.

- kube-scheduler: O agendamento de pods nos nodes apropriados baseados em disponibilidade de recursos e outras restrições.

- kube-controller-manager: executa os processos do controller. Cada controller é um processo separado que gerencia tarefas
                           de rotina, como manter o estado de serviço desejado e recursos, lidando com as operações do node
                           e gerenciando a replicação.

- cloud-controller-manager: integrado com o provedor de nuvem (se estiver rodando em um) para gerenciar recursos específicos
                            da nuvem. Lida com tarefas como balanceador de carregamento, armazenamento e rede.

- kubelet: um agente que é executado em cada worker node e garante que o container esteja rodando nos pods e gerência o 
           ciclo de vida dos containers.

- kube-proxy: essa rede proxy roda em cada node e mantém as regras de rede para permitir comunicação com os pods.

+----------------------------------------------------------------------------------------------+
| Cluster                                                                                      |
| +-----------------------------------------------+                                            |
| | Control Plane                                 |   +--------------------------------------+ |
| | +-----------------------------------------+   |   | Data Plane                           | |
| | | Control Plane Node                      |   |   | +-------------------------------+    | |
| | |                 +-------+               |   |   | | worker node                   |    | |
| | |                 | c-c-m |               |   |   | |  +----------+  +----------+   |    | |
| | |                 +-------+               |   |   | |  | workload |  | another  |   |    | |
| | | +-----+            ^                    |   |   | |  +----------+  | workload |   |    | |
| | | | c-m |            |                    |   |   | |                +----------+   |    | |
| | | +-----+      <- +-----+                 |   |   | |                               |    | |
| | | +------+        | api |                 |   |   | |                               |    | |
| | | | etcd |   <-   +-----+                 |   |   | |-------------------------------|    | |
| | | +------+           |                    |   |   | | +---------+     +---------+   |    | |
| | |                    v                    |   |   | | | kubelet |     | k-proxy |   |    | |
| | |                +-------+                |   |   | | +---------+     +---------+   |    | |
| | |                | sched |                |   |   | +-------------------------------+    | |
| | |                +-------+                |   |   |                                      | |
| | |                                         |   |   +--------------------------------------+ |
| | +-----------------------------------------+   |                                            |
| +-----------------------------------------------+                                            |
|                                                                                              |
+----------------------------------------------------------------------------------------------+










