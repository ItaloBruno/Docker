# Imagem base para a imagem que será criada
FROM ubuntu

# Criador/responsável pela manutenção desta imagem que será criada
MAINTAINER ItaloBruno

# Comandos que serão executados dentro do container
RUN apt-get update && \
    apt-get install  -y nginx

# Adiciona um arquivo para dentro do container, informando o seu local de destino
# Neste caso estamos copiando o arquivo "exemplo" para o path informado
# e mudando seu nome para "default"
ADD exemplo /etc/nginx/sites-enabled/default

# Expondo uma porta do Container, para que seja feita o mapeamento 
# com uma porta do host
EXPOSE 8080

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

ADD ./ /rails

WORKDIR /rails

EXPOSE 8080

CMD [ "service", "nginx", "start" ]


