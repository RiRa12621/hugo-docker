# hugo-docker
Source to build hugo docker images
![Docker Pulls](https://img.shields.io/docker/pulls/rira12621/hugo-docker)



Results of automated builds can be found on [Docker Hub](https://hub.docker.com/r/rira12621/hugo-docker)


## How To Use

There are two options mainly: use the image bare just as a containerized hugo or
build on top.

### Use as hugo container

`docker run -ti --rm =p 1313:1313 -v /path/to/my/hugo/site:/website rira12621/hugo-docker hugo serve --source /website --bind=0.0.0.0`


### Build on top

Like with any other image you can use `FROM` and then build accordingly:

```dockerfile
FROM rira12621/hugo-docker

WORKDIR /website
ADD . .

ENV HUGO_BIND="0.0.0.0"
EXPOSE 1313

CMD ["hugo", "serve", "--bind=${HUGO_BIND}"]

```


