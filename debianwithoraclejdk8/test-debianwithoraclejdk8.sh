clear
echo "[X] Parando os containers.........."
echo "================================================================="
docker stop -t 0 $(docker ps -q)
docker stop -t 0 container-debianwithoraclejdk8
echo " "
echo "[X] Apagando container.........."
echo " "
docker rm container-debianwithoraclejdk8
echo "[X] Criando Container a partir da  Imagem.........."
echo " "
docker run -it --name container-debianwithoraclejdk8 -v "/opt/sms:/opt/sms"  debianwithoraclejdk8:latest 

# debianwithoraclejdk8:latest
