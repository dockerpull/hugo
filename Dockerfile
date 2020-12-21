FROM golang:latest

RUN git clone https://github.com/gohugoio/hugo.git && \
    cd hugo && \
    go install && \
    /go/bin/hugo version

ENTRYPOINT /go/bin/hugo
