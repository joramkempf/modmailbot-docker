FROM node:16-alpine
LABEL name "modmailbot"
LABEL version "3.6.1"

WORKDIR /usr/modmailbot
COPY / ./
RUN npm ci --production

# Fix Plugin Error by installing npm dependencies
RUN cd plugins/modmailbot-formatter && npm i && npm audit fix

CMD ["npm", "start"]