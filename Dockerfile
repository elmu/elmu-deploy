FROM node:14.13.1-alpine3.12

ENV NODE_ENV "production"
ENV YARN_CACHE_FOLDER "/app/.yarn/cache"

WORKDIR /app

COPY . /app/

RUN yarn cache clean && yarn install --non-interactive --frozen-lockfile --check-files --production=true

ENTRYPOINT ["/app/elmu-deploy"]
