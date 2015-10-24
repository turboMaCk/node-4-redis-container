FROM ubuntu:14.04
MAINTAINER turbomack

# Install node.js 4.x
RUN \
    apt-get update -y \
&&  apt-get install -y curl \
&&  curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash - \
&&  apt-get install -y nodejs

# Install redis
RUN \
    apt-get install -y redis-server \
&&  cp /etc/redis/redis.conf /etc/redis/redis.conf.default

# start redis
CMD \
    redis-server /etc/redis/redis.conf
