# caesium
CaesiumCLT (https://saerasoft.com/caesium/clt/) Packaged in a Docker container to use as an image compression step within a CI Pipeline

[![](https://images.microbadger.com/badges/version/bardiir/caesium.svg)](https://microbadger.com/images/bardiir/caesium "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/bardiir/caesium.svg)](https://microbadger.com/images/bardiir/caesium "Get your own image badge on microbadger.com") [![GitHub last commit](https://img.shields.io/github/last-commit/bardiir/caesium.svg)](https://github.com/bardiir/caesium) [![Docker Automated build](https://img.shields.io/docker/automated/bardiir/caesium.svg)](https://hub.docker.com/r/bardiir/caesium/builds/) [![Docker Build Status](https://img.shields.io/docker/build/bardiir/caesium.svg)](https://hub.docker.com/r/bardiir/caesium/builds/)


## Usage
You can use this with Docker to create compressed images. You can start an interactive console like this:

```
$ docker run -ti -v /some/local/folder:/caesium bardiir/caesium
```

This does mount the folder ```/some/local/folder``` into the docker instance and gives you a command shell that you can use to work on the images.

For example compress ```image.jpg``` into a folder ```output``` losslessly. See other usage examples on the [CaesiumCLT](https://github.com/Lymphatus/caesium-clt) page: 

```
$ caesiumclt -q 0 -o output image.jpg
```

You can also do this in one go:

```
$ docker run -v /some/local/folder:/caesium bardiir/caesium caesiumclt -q 0 -o output image.jpg
```
