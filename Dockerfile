FROM openjdk:11.0.2-slim

ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 10.15.3

RUN apt-get update
RUN apt-get --assume-yes install curl

RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" \
  && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1

RUN apt-get update && apt-get install -y build-essential

CMD [ "node" ]
