# TLS (Transporte Layer Security)

- O TLS é usado para garantir a privacidade através da internet. O uso 
  primário do TLS é para criptografar a comunicação entre aplicações web
  e servidores. Pode ser usado para protegar mensagens de e-mail e VoIP.

- A diferença entre o SSL e o TLS na epóca que o termo foi criado não era 
  quase nenhuma, somente os responsáveis pelo projeto. Hoje em dia o SSL foi
  descontinuado e o TLS recebeu sua última versão em 2018.

## O que o TLS faz?

- Encripta: Esconde os dados reais através da criptografia através do par 
            de chaves assímetricas.

- Autenticação: Faz um handshake para verificar se o a pessoa que está
                querendo o acesso é realmente quem ela diz ser.

- Integridade: Os dados são assinados pelo certificado TLS para que os 
               dados não sejam alterados. 

## Cerficados 

- O certificado é um validador que possui a chave pública do servidor que 
  faz a validação com a chave privada do usuário.

## Como o TLS funciona 

- O coneção TLS é iniciada pelo handshake, que é feito entre o usuário e a 
  máquina.

- Durante o handshake o servidor e a máquina cliente especificam qual versão vai 
  ser usada do TLS.

- Decide qual tipo de cifra vai ser usada.

- Faz a autenticação com o servidor utilizando o certificado TLS.

- Gera chaves de criptografia para encriptar as mensagens entre o servidor e o 
  cliente. Isso ocorre depois que o handshake é concluído.

