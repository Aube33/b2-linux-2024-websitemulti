FROM node:20.18-bookworm

RUN mkdir -p /app/public

COPY ./server.js ./package.json /app
COPY ./public /app/public
WORKDIR /app

RUN npm i

ENTRYPOINT ["node", "server.js"]