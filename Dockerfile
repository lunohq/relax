FROM golang:1.5.3
MAINTAINER Michael Hahn <michael@lunohq.com>

ADD . /go/src/github.com/zerobotlabs/relax
WORKDIR /go/src/github.com/zerobotlabs/relax
RUN make build

CMD ["./build/relax"]
