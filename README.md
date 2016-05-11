simpleweb
===
A simple web server that outputs the IP addresses of the source and destination, useful for load balancing testing. It checks for the $PORT0 variable and starts the server on that port if it's defined. This is useful for deployment with Marathon.

# What is simpleweb?
[simpleweb](https://github.com/fernandosanchezmunoz/simpleweb) is a simple web to show the source and destination IP addresses of the received requests information, written in python.

# How to use this image?
The docker image is auto built at [https://registry.hub.docker.com/u/fernandosanchez/simpleweb/](https://registry.hub.docker.com/u/fernandosanchez/simpleweb/).

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


## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D
