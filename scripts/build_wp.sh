#!/bin/sh

eval $(aws ecr get-login --no-include-email --region us-east-1)

docker build --no-cache -t headless-wp ./src/
docker tag headless-wp:latest 946347618863.dkr.ecr.us-east-1.amazonaws.com/headless-wp:latest
docker push 946347618863.dkr.ecr.us-east-1.amazonaws.com/headless-wp:latest