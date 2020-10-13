FROM node:12.19.0-alpine3.12

ENV NODE_ENV "production"

WORKDIR /app

COPY . /app/

RUN yarn install --non-interactive --frozen-lockfile --check-files --production=true

ENTRYPOINT ["/app/elmu-deploy"]
