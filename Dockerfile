FROM golang:latest

RUN git clone https://github.com/gohugoio/hugo.git && \
    cd hugo && \
    go install && \
    /go/bin/hugo version

RUN adduser --disabled-password --gecos "" --uid 1001 action
USER action

ENTRYPOINT /go/bin/hugo
