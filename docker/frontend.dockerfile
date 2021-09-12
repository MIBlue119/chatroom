FROM node:14.17-alpine
LABEL description="This is the base docker image for the chatroom frontend"

RUN apk update && \
    apk add git
RUN yarn install --production
WORKDIR /app
COPY  frontend/package.json  ./
COPY  frontend/public ./public
COPY frontend/src ./src

RUN npm install -g npm@7.15.1
RUN yarn install

EXPOSE 3000
CMD ["yarn","run","start"] 