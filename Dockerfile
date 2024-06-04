FROM alpine

RUN apk update &&\
    apk add --no-cache hugo

ENV HUGO_BIND="0.0.0.0"
