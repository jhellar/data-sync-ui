FROM centos/nodejs-8-centos7:latest

EXPOSE 8000

USER root

COPY dist ./dist
COPY public ./public
COPY package.json ./package.json

USER default

RUN scl enable rh-nodejs8 "npm install --production"

CMD ["npm", "start"]
