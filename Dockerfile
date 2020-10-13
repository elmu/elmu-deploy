FROM node:14.13.1-alpine3.12

ENV NODE_ENV "production"

WORKDIR /app

COPY . /app/

RUN npm install

ENTRYPOINT ["/app/elmu-deploy"]
