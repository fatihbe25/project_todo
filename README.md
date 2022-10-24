# Docker demo project for Todo project devops prepation.


## a simple nginx webserver 

    - nginx.conf : nginx configuration  
    - Dockerfile : docker image build lines, defines docker image layers.
    - docker-compose.yml : defines service, port to build and rıun image 

command to build docker image and run to a container
```

  docker compose up --build
  
```

# to push image to remote repository (default dockerhub) (my repository = https://hub.docker.com/r/fatihbe25/project_todo_web ) : 

```

docker tag project_todo_web:latest fatihbe25/project_todo_web
docker push fatihbe25/project_todo_web 

```

# to try image in your docker environment 

```

docker pull fatihbe25/project_todo_web
docker run fatihbe25/project_todo_web -p 8080:8080  

```

# browse 

```
  
  http://localhost:8080
  
```
