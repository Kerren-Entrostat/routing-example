#!/bin/bash
echo "Enter the name of the server:\n"
read name

echo "export PORT=3000" >> /etc/profile
echo "export SERVER_NAME=$name" >> /etc/profile

sudo snap install node
npm install
npm install -g pm2@latest

pm2 start server.js