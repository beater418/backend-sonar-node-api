FROM node:24-alpine

# Update packages to fix known OS vulnerabilities (e.g., busybox, openssl)
RUN apk update && apk upgrade --no-cache \
	&& npm install -g npm@latest \
	&& npm cache clean --force

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev

COPY --chown=node:node index.js ./

USER node

EXPOSE 3000

CMD [ "node", "index.js" ]