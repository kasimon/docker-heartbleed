FROM golang:latest
MAINTAINER Karsten Heymann <karsten.heymann@gmail.com>

RUN go get github.com/FiloSottile/Heartbleed
RUN go install github.com/FiloSottile/Heartbleed

ENTRYPOINT ["/go/bin/Heartbleed"]
