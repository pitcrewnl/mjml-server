FROM node:lts-alpine

ENV NODE_ENV=production

ENV CORS=""

ENV MJML_KEEP_COMMENTS=false
ENV MJML_VALIDATION_LEVEL=strict
ENV MJML_MINIFY=true
ENV TOKEN=

COPY package* ./

RUN set -ex \
    && apk --no-cache upgrade \
    && apk --no-cache add curl \
    && npm install

COPY index.js ./index.js

HEALTHCHECK CMD curl --fail http://localhost:80/health || exit 1

EXPOSE 80

ENTRYPOINT [ "node", "index.js"]
