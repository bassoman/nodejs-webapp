FROM bassoman/ubuntu-jdk-nodejs
MAINTAINER Jon Lancelle <bassoman@gmail.com>

RUN npm install -g node-gyp \
  && npm install -g node-gyp-install \
  && node-gyp-install \
  && npm install level \
  && cd / && npm install socket.io \
  && npm install -g bassoman/generator

expose 3000
