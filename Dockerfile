FROM node

WORKDIR /app

COPY package.json package.json

RUN npm install

COPY . .

ENTRYPOINT [ "node" ]
CMD [ "/app/server.js" ]