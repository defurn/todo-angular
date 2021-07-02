#!/bin/bash

# -b to re-build container with deps
# -d to run interactive shell for development

if [[ "$1" == "-b" ]]; then
  docker build --build-arg UID=$UID --build-arg GID=$(id -g $USER) -t todo-angular .
elif [[ "$1" == "-d" ]]; then 
  docker run --rm -it -p 8080:8080 -v ${PWD}:/app --name=todo-mvc todo-angular /bin/bash # can add e.g. nodemon and run server.js 
else
  docker build --build-arg UID=$UID --build-arg GID=$(id -g $USER) -t todo-angular .
  docker run --rm -it -p 8080:8080  --name=todo-mvc todo-angular
fi
