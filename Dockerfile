FROM ubuntu

MAINTAINER ItaloBruno

RUN apt-get update && \
    apt-get install  -y nginx

ADD exemplo /etc/nginx/sites-enabled/default

RUN ln -sf /dev/stdout /var/log/nginx/access.log

RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 8080

CMD [ "nginx", "-g", "daemon off;"]


