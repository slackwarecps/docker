FROM debian:stable
MAINTAINER Fabio Alvaro
ENV FABIO_ENV=dev
ENV FABIO_OBJETIVO=java-spring
ENV PORT=5000
VOLUME $(HOME)/sms /opt/sms
WORKDIR /opt/sms
#Instala JDK
RUN apt-cache search vim
RUN apt-get install htop
RUN apt install gnupg
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886
ENTRYPOINT npm start
EXPOSE $PORT
