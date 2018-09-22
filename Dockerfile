FROM node

COPY package.json package.json

RUN npm install

COPY . .

ENTRYPOINT [ "npm" ]
CMD [ "start" ]