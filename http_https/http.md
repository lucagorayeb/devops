# HTTP

- O Hypertext Transfer Protocol (HTTP) é a fundação da World Wide Web.

- HTTP é um protocolo de comunicação web. Esse protocolo é utilizado para 
  fazer a comunicação entre clientes e servidores.

- Define como o contéudo é solicitado e transmitido pela internet.

- HTTP depende do TCP/IP para receber as requisições e entregar as respostas.

- A porta usada para o protocolo HTTP é a 80.

- O HTTP depende do handshake de três vias. Toda requisição TCP faz um 
  handshake de três vias. Por isso o HTTP depende do TCP. O handshake
  faz com que o cliente e o servidor troquem pacotes antes de compartilhar
  dados de aplicação.

- Como funciona o handShake de 3 vias:

    * SYN - O cliente escolhe um número aleatório e envia ao servidor.

    * SYN ACK - O servidor reconhece a requisição enviando um pacote ACK de volta
                para o cliente .

    * ACK - O cliente recebe o que vem do servidor e envia um ACK incrementado para o
            servidor.

    Assim que o handshake é finalizado o cliente e o servidor podem trocar
    dados. O cliente começa a enviar dados assim que envia o pacote ACK,
    mas o servidor só recebe e envia dados depois de receber o ACK.

- As diferenças entre os protocolos HTTP/1.x e o HTTP/2 são muitas:

    1 - Protocolo Binário
        O HTTP/2 vai passar a enviar dado na forma de quadros
        binários. Os cabeçalhos serão compostos por metadatas e
        payloads. Existem vários tipos de frames. São eles: 
            HEADERS - Cabeçalho da 
                      requisição.
            DATA - Conteúdo da
                   requisição.
            RST_STREAM - Pausa a
                         requisição 
                         sem interromper
                         a conexão.

        Cada requisição do HTTP/2 possui um id de identificação
        que é dividido em frames. Os frames são pedaços binários de
        data. Cada frame tem um id que e tem um id que identifica 
        ao qual frame pertence. Requisições criadas pelo
        cliente são de número par e as requisições feitas pelo
        servidor são de número impar.

    2 - Multiplexação
        Todas as requisições e respostas são enviadas assim que uma conexão TCP é aberta
        todos os streams são enviados de forma assincrona, as respostas não tem ordem e
        o cliente usa o número do id para fazer a identificação de que 
        stream pertence a qual pacote. Evita a demora de ter que
        esperar por uma nova resposta.

    3 - Compressão de Cabeçalho
        Introduzida para evitar que o excesso de requisições de um
        único cliente ocupe largura de banda redundante, pois toda 
        requisição envia um cabeçalho e pode estar presentes cookies e 
        dados redundantes. A compressão foi criada a partir do código 
        de Huffman que cria tabelas no cliente e no servidor para que
        evite envias cabeçalho redundante. 

    4 - Server Push
        O servidor pode enviar o conteudo que o cliente quer ser o cliente ter que fazer
        uma requisição. O servidor envia um frame especial chamado PUSH_PROMISE que
        notifica o cliente, "Eu, eu estou pronto para enviar esse recurso! Não me
        pergunte para enviar." O PUSH_PROMISE frame está associado ao strema que faz o 
        push acontecer e contai o promised do stream ID.

    5 - Prioridade de Requisição
        O cliente pode assinar a prioridade da requisição incluindo a prioridade no 
        cabeçalho. A qualquer momento o cliente pode enviar um frame PRIORITY para mudar
        a prioridade do stream. Sem informação de prioridade o servidor envia de forma 
        assíncrona. O servidor decide o quanto de recurso deve ser dado a requisição se 
        ela tiver prioridade.

    6 - Segurança
        O protocolo HTTP/2 só consiguira ser tranferido se o tráfego for composto por
        TLS.

- Uma típica requisição HTTP contém:
    1 - A versão do HTTP usado.
    2 - A URL.
    3 - O método HTTP.
    4 - O cabeçalho de requisição HTTP.
    5 - O corpo opicional do HTTP.

- Os métodos HTTP mais utilizados são:
    GET -> Faz requisições esperando uma reposta seja retornada.
    POST -> O cliente está enviando informação para o servidor web.

- Os cabeçalhos contém a informação de texto armazenada em pares chave-valor e são
  incluidos em todas as requisições HTTP. Esse cabeçalhos comunicão informações
  importantes, como qual o navegador que está sendo usado e qual data esta sendo
  solicitada.

- Uma resposta HTTP é o que o servidor manda de resposta a solicitação do cliente.
  Uma típica reposta HTTP contém:
    1 - Um código de status HTTP.
    2 - Cabeçalhos de resposta HTTP.
    3 - Corpo HTTP opicional.

- Os códigos de status do HTTP são indicativos do que aconteceu com a requisição.
  Os códdigos existentes são:
    1 - 1xx (Informativo)
    2 - 2xx (Sucesso)
    3 - 3xx (Redirecionado)
    4 - 4xx (Erro do cliente)
    5 - 5xx (Erro do servidor)

    O xx refere a número entre 0-99.
