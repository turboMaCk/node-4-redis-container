# node-4-redis-container

A dockerfile to build node.js 4 ruby 2.2 and redis-server using Ubuntu 14.04 distribution.

This container is mainly design for DEV and testing purposes. It's not recommend for production use.

## Get image

There is an [Automated Build on hub.docker.com](https://hub.docker.com/r/turbomack/node-4-redis-container/), so getting the image is easy:

```bash
$ docker pull turbomack/node-4-redis-container:latest
```

## Run it

Run it from inside a Docker container:

```bash
$ docker run -it --rm turbomack/node-4-redis-container
```

## Build image from repository

You can build this image on your own. Compilation of phantomjs takes about half hour to up to five hours so be prepared that first build will take a long time!

```bash
$ git clone git@github.com:turboMaCk/node-4-redis-container.git
$ cd node-4-redis-container
$ docker build -t turbomack/node-4-redis-container:latest .
```

