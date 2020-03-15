#!/bin/sh

eval $(aws ecr get-login --no-include-email --region us-east-1)

docker build --no-cache -t headless-wp ./src/
docker tag headless-wp:latest 
docker push 