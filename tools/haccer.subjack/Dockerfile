FROM golang:1.11-alpine3.8 AS build-env

RUN apk add --no-cache --upgrade git

RUN go get github.com/haccer/subjack

FROM alpine:3.8

RUN apk add --no-cache ca-certificates

COPY --from=build-env /go/bin/subjack /usr/bin/subjack

CMD subjack