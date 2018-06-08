FROM nginx:latest
MAINTAINER Fabio Alvaro Pereira
COPY /public /var/www/public
COPY /docker/config/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443
ENTRYPOINT ["nginx"]
# parametros extras para o entrypoint
CM ["-g","daemon off;"]
