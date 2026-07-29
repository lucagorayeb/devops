# NGINX

## Container do NGINX
docker run  --rm --name estudando-nginx -p 8080:80 -d nginx                    

## Conteúdo 
________________      _____________      _________      __________
|              | ---+ |           | ---+ |       | ---+ | Django |
|    Browser   |      |   Nginx   |      | uWSGI |      | React  |
|______________| +--- |___________| +--- |_______| +--- |________|

- A melhor forma de usar o nginx é pelo docker pois assim não é necessário 
  instalar localmente.

- Para iniciar para fazer um pull na imagem oficial do nginx através do
  docker hub.
>> docker pull nginx # Comando para pegar a imagem do nginx 

- 

