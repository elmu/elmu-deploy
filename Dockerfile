FROM node:14.12.0-alpine3.10

ENV NODE_ENV "production"

WORKDIR /app

COPY . /app/

RUN yarn

ENTRYPOINT ["/app/elmu-deploy"]
