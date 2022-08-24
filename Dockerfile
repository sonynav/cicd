FROM ubuntu:latest
MAINTAINER sony
RUN apt-get update -y
RUN apt-get install apache2 -y
WORKDIR var/www/html
COPY index.html index.html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
