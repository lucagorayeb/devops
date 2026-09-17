# Nginx 

## Parametros do proxy
- Server para definir os hearder do servidor
- Host $http_host traz o nome e a porta usada pelo host.
- X-Real-IP $remote_addr traz o ip da requisição original.
- X-Forwarded-For $proxy_add_x_forwarded_for traz toda a lista de requisições que foram
  feitas até chegar no servidor de proxy.
- X-Forwarded-Proto $scheme traz o método que foi utilizado pela requisição.
