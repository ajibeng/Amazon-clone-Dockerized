# Dockerfile for our code
FROM node:lts-buster-slim 
ARG NODE_ENV=productions
ENV NODE_ENV=${NODE_ENV}

WORKDIR /usr/src/app

COPY package.json .
COPY yarn.lock .

RUN yarn install 

COPY . . 

CMD ["yarn", "start"]
