FROM node:14.12.0-alpine3.10

ENV NODE_ENV "production"

WORKDIR /app

COPY . /app/

RUN apk --no-cache --virtual build-dependencies add git python make g++ \
    && yarn install --non-interactive --frozen-lockfile --check-files --production=true \
    && apk del build-dependencies

ENTRYPOINT ["/app/elmu-deploy"]
