FROM debian:wheezy
AUTHOR Karsten Heymann <karsten.heymann@gmail.com>

RUN apt-get update
RUN apt-get install -y wget git

RUN wget http://go.googlecode.com/files/go1.2.1.linux-amd64.tar.gz
RUN tar xfvz go1.2.1.linux-amd64.tar.gz

ENV GOPATH /
ENV GOROOT /go
ENV PATH $PATH:$GOROOT/bin

RUN go get github.com/FiloSottile/Heartbleed
RUN go install github.com/FiloSottile/Heartbleed

ENTRYPOINT ["/bin/Heartbleed"]
