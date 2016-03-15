FROM golang:1.5.3
MAINTAINER Michael Hahn <michael@lunohq.com>

RUN go get github.com/tools/godep

ADD . /go/src/github.com/zerobotlabs/relax
WORKDIR /go/src/github.com/zerobotlabs/relax
RUN make build

CMD ["./build/relax"]
