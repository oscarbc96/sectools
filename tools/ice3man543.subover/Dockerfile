FROM golang:1.11-alpine3.8 AS build-env

RUN apk add --no-cache --upgrade git

RUN go get github.com/ice3man543/subover

FROM alpine:3.8

RUN apk add --no-cache ca-certificates

COPY --from=build-env /go/bin/subover /usr/bin/subover

COPY --from=build-env /go/src/github.com/ice3man543/subover/providers.json /providers.json

CMD subover