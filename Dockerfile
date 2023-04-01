FROM node:16-alpine

WORKDIR /app
COPY . /app

RUN npm install -g appcenter-cli@2.13.4 \
    && apk update \
    && apk add git \
    && apk add bash

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

