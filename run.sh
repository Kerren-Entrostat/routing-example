#!/bin/bash
echo "Enter the name of the server:"
read name


curl -sSL https://get.docker.com/ | sh

docker build ./ -t hello/server

docker run -p 3000:3000 -e SERVER_NAME=$name -d hello/server:latest