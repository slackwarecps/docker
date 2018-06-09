#docker run --name fabio-nginx -v /public:/usr/share/nginx/html:ro -d nginx 

#docker run --name fabio-nginx1 -d fabio-nginx
TAG=1.0.2
docker stop fabio-nginx1
docker rm fabio-nginx1
docker build -t fabio-img-nginx:$TAG .
docker run -d --name fabio-nginx1 -p 80:80 fabio-img-nginx:$TAG
#docker tag aed84d994520 fabioalvaro/fabio-img-nginx:$TAG
#docker push fabioalvaro/fabio-img-nginx:$TAG
google-chrome http://localhost
