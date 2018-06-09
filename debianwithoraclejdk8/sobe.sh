#docker run --name fabio-nginx -v /public:/usr/share/nginx/html:ro -d nginx 

#docker run --name container-debianwithoraclejdk8 -d fabio-nginx
TAG=latest
#docker stop container-debianwithoraclejdk8
#docker rm container-debianwithoraclejdk8
#docker build -t debianwithoraclejdk8:$TAG .

#docker run -d --name container-debianwithoraclejdk8 -p 80:80 debianwithoraclejdk8:$TAG


docker tag b8581c51c41c fabioalvaro/debianwithoraclejdk8:$TAG
docker push fabioalvaro/debianwithoraclejdk8:$TAG


#google-chrome http://localhost
