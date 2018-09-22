#!/bin/bash
echo "Enter the name of the server:"
read name

echo "export PORT=3000" >> /etc/profile
echo "export SERVER_NAME=$name" >> /etc/profile

curl -sSL https://get.docker.com/ | sh

docker build -t hello/server

docker run -p 3000:3000 -e PORT=$PORT -e SERVER_NAME=$SERVER_NAME hello/server -d