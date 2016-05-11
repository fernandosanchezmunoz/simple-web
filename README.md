simpleweb
===
A simple web server that outputs the IP addresses of the source and destination, very useful for testing loadbalancer to show real requests. Based on yeasy/simple-web, this version also checks for the $PORT0 variable and starts the server on that port if it's defined. This is useful for use with Marathon, where the $PORT0 variable is automatically passed on to containers at creation time to ensure unique port assignment.

# Supported tags and respective Dockerfile links

* [`latest` (latest/Dockerfile)](https://github.com/fernandosanchez/simpleweb/blob/master/Dockerfile)

For more information about this image and its history, please see the relevant manifest file in the [`fernandosanchez/simple-web` GitHub repo](https://github.com/fernandosanchezmunoz/simpleweb).

# What is simple-web?
[simple-web](https://github.com/fernandosanchezmunoz/simpleweb) is a simple web to show the source and destination IP addresses of the received requests information, written in python.


# How to use this image?
The docker image is auto built at [https://registry.hub.docker.com/u/fernandosanchez/simple-web/](https://registry.hub.docker.com/u/fernandosanchez/simpleweb/).


## In Dockerfile
```sh
FROM fernandosanchez/simpleweb:latest
```

## Local Run
```sh
$ docker run --rm -it -p 80:80 fernandosanchez/simpleweb:latest
```

# Which image is based on?
The image is based on yeasy/simple-web, which is based on python:2.7

# What has been changed?
Add the index.py code. Modify it to have the server listen on port number $PORT0 if that environment variable is defined. This is useful for automatic port assignment with Marathon.


# Supported Docker versions

This image is officially supported on Docker version 1.7.1.

Support for older versions (down to 1.0) is provided on a best-effort basis.

# User Feedback
## Documentation
Be sure to familiarize yourself with the [repository's `README.md`](https://github.com/fernandosanchezmunoz/simple-web/blob/master/README.md) file before attempting a pull request.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/fernandosanchezmunoz/simple-web/issues).

You can also reach many of the official image maintainers via the email.

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/fernandosanchezmunoz/simple-web/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
