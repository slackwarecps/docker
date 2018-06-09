clear
echo "[X] Parando os containers.........."
echo "================================================================="
docker stop -t 0 $(docker ps -q)
docker stop -t 0 container-flavio
echo " "
echo "[X] Apagando container.........."
echo " "
docker rm container-flavio
echo "[X] Criando Container a partir da  Imagem.........."
echo " "
docker run -it --name container-flavio -v "/opt/sms:/opt/sms"  assertiva-flavio:latest 

