# caesium
CaesiumCLT (https://saerasoft.com/caesium/clt/) Packaged in a Docker container to use as an image compression step within a CI Pipeline

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
$ docker run -ti -v /some/local/folder:/caesium bardiir/caesium caesiumclt -q 0 -o output image.jpg
```
