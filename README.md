# docker
docker utils

docker version

docker run hello-world

https://labs.play-with-docker.com/

https://store.docker.com/


#executar e atrelar terminal ao container
docker run -it  debian:latest

#encerrar

control+D 

#ver parados

docker ps -a

#ligar novamente

docker start <ID>

docker stop <ID>

#ligar com terminal

docker start -a -i <ID>

#remover 

docker rm

docker container prune

#remove

docker rmi <>


docker run dockersamples/static-site

control + c #encerrar

#rodar em background

docker run -d dockersamples/static-site

#Mmata agora o padrao é 10seg

docker stop -t 0 0ed2bb95fdc2

#linkar porta

docker run -d -P dockersamples/static-site

#ver portas ligadas

docker port 2abd4ca1b430


#linkar porta randomica

docker run -d -P --name meu-site dockersamples/static-site

docker stop -t 0 meu-site


# ligar porta do host com container

docker run -d -p 12345:80 --name meu-site dockersamples/static-site


# passar variavel de ambiente

docker run -d -p 12345:80 -e AUTHOR="Fabio Alvaro" --name meu-site dockersamples/static

docker ps -q

docker stop $(docker ps -q)

docker stop -t 0 $(docker ps -q)


## VOLUMES
===================
docker run -v "/var/www" debian

docker run -it -v"/home/fabioalvaro/workspace-fabioalvaro/docker/volumes/hdlindo:/var/www" debian


    docker run -p 8080:3000 -it -v"/home/fabioalvaro/workspace-fabioalvaro/docker/volumes/hdnode-001:/var/www" -w "/var/www" node npm start

    docker run -d -p 8080:3000 -it -v"/home/fabioalvaro/workspace-fabioalvaro/docker/volumes/hdnode-001:/var/www" -w "/var/www" node npm start

    docker run -d -p 8080:3000 -it -v"$(pwd):/var/www" -w "/var/www" node npm start



## CRIAR NOSSAS IMAGENS
=========================
docker file = receita de bolo = imagem

Dockerfile


    FROM node
    MAINTAINER Fabio Alvaro
    COPY /home/fabioalvaro/workspace-fabioalvaro/docker/volumes/hdnode-001/ /var/www
    WORKDIR /var/www
    RUN npm install
    ENTRYOINT npm start
    EXPOSE 3000





### Aula 05 - Comnicacao entre containers
============================================

## criar rede no docker
-------------------------------------------
docker network create --driver bridge minharede-karen


docker network ls
d4a02b8c39a1        minharede-karen     bridge              local 



docker run -it --name meu-container-de-debian --network minharede-karen debian


docker stop -t 0 $(docker ps -q) && docker container prune


## apagar o container
docker rm -f meu-debian


## analisar o container criado
docker inspect meu-container-de-debian

##criar um segundo container na mesma rede
docker run --name segundo-debian -it --network minharede-karen debian

#instalar o ping dentro do debian
apt-get update && apt-get install iputils-ping


hostname -i

# baixa uma imagen docker pronta do Docker Hub do Douglas
-----------------
docker pull douglasq/alura-books:cap05


# baixa a imagem do mongo
docker pull mongo



## Criar uma imagem a partir de um docker file 
docker build -f alura-books.dockerfile -t minhaimagemdaora:latest .

## sobe app node do douglas

docker run -d -p 8080:3000 douglasq/alura-books:cap05




























