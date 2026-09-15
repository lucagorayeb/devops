# Comandos do openssl

## Comando para gerar um certificado de root
- openssl req -x509 -newkey rsa:2048 -days 365 -noenc -out cert.pem -keyout key.pem

## Comando para transformar o certificado gerado em um certificado confiável
- openssl x509 -in cert.pem -trustout 
