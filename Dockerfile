FROM node:14.12.0-alpine3.10

ENV NODE_ENV "production"

WORKDIR /app

COPY . /app/

RUN yarn install --non-interactive --frozen-lockfile --check-files --production=true

ENTRYPOINT ["/app/elmu-deploy"]
