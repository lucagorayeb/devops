# SSL (Secure Socket Layer)

- O SSL é uma forma de encriptação para protocolos na internet. O SSL
  transforma o HTTP em HTTPS.

## Como o SSL funciona?

- Para adicionar uma camada de privacidade o SSL criptografa o contéudo da
  mensagem para que caso alguém intercepte o contéudo da mensagem veja
  apenas caracteres quase impossíveis de descriptografar.

- O SSL realiza um autenticação chamada de handshake entre os dois
  dispositivos de comunicação para confirmar se eles são quem dizem ser.

- O SSL assina o dado para manter a integridade dele. 

## Certificado SSL (TLS)

- O certificado possui o formato de chaves assémetricas. O site da web 
  fica em posse da chave pública e o servidor fica com a chave privada.

- Tipos de certificados SSL:

    Single domain (domínio único) -> O certificado SSL é aplicado somente a
                                     um domínio.
    Wildcard -> O certificado SSL é aplicado a um domínio e seus 
                sub-domínios.
    Multi-domain (domínio múltiplo) -> Pode ser aplicado a múltiplos 
                                       domínios diferentes.

- Validações do certificado SSL

    Domain Validation -> É o mais baixo nível de validação e o mais barato.
                         Tudo que deve ser feito é provar o controle sobre
                         o domínio do site.

    Organization Validation -> O usuário possui um certificado fornecido
                               geralmente por outra empresa.

    Extended Validation -> É necessário fazer todo uma checagem de
                           background para implementar o certificado SSL.
 
