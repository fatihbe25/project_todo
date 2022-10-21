
# a simple nginx webserver configured by nginx.conf to serve a simple index.html 
Dockerfile defines docker image layers.
docker-compose.yml defines services ports to build image. 

# image taged for dockerhub and pushed : 

```
docker tag app:latest fatihbe25/aop
docker push fatihbe25/app 
```

# to try image in your docker environment 
# https://hub.docker.com/r/fatihbe25/app

```
docker pull fatihbe25/app
```
# --> will pull image from hub into your docker images

```
docker run fatihbe25/app -p 8080:8080  
```
# --> will create a container

# --> and browse: 
# localhost:8080
