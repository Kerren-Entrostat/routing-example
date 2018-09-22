#!/bin/bash
echo "Enter the name of the server:"
read name

echo "export PORT=3000" >> /etc/profile
echo "export SERVER_NAME=$name" >> /etc/profile

sudo snap install --edge node
npm install
npm install -g pm2@latest

pm2 start server.js