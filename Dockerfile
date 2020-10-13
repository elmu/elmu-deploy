FROM node:14.13.1-stretch-slim

ENV NODE_ENV "production"

WORKDIR /app

COPY . /app/

RUN yarn install --non-interactive --frozen-lockfile --check-files --production=true

ENTRYPOINT ["/app/elmu-deploy"]
