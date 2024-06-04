# hugo-docker
Source to build hugo docker images
![Docker Pulls](https://img.shields.io/docker/pulls/rira12621/hugo-docker)



Results of automated builds can be found on [Docker Hub](https://hub.docker.com/r/rira12621/hugo-docker)


## How To Use

There are two options mainly: use the image bare just as a containerized hugo or
build on top.

### Use as hugo container

`docker run -ti --rm -v /path/to/my/hugo/site:/website rira12621/hugo-docker hugo serve --source /website`


### Build on top

Like with any other image you can use `FROM` and then build accordingly:

```dockerfile
FROM rira12621/hugo-docker

WORKDIR /website
ADD . .

CMD ["hugo", "serve"]

```


Note that this image is build on top of Alpine .
