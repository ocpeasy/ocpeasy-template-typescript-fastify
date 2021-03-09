FROM node:15.1.0-buster-slim
WORKDIR /var/app
ENV PATH /var/app/node_modules/.bin:$PATH
COPY package.json ./
RUN yarn
COPY . ./
ENTRYPOINT ["yarn", "start"]
