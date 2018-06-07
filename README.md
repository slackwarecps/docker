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
docker run -d -p 12345:80 -e AUTHOR="Fabio Alvaro" --name meu-site dockersamples/static-site

docker ps -q

docker stop $(docker ps -q)
docker stop -t 0 $(docker ps -q)


VOLUMES
===================
docker run -v "/var/www" debian
docker run -it -v"/home/fabioalvaro/workspace-fabioalvaro/docker/volumes/hdlindo:/var/www" debian


docker run -p 8080:3000 -it -v"/home/fabioalvaro/workspace-fabioalvaro/docker/volumes/hdnode-001:/var/www" node npm start
