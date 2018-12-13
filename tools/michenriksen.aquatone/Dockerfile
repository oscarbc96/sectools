FROM alpine:3.8

RUN apk add --no-cache build-base gcc wget git ruby ruby-dev nodejs nodejs-npm ca-certificates

RUN gem install rdoc && sleep 5s && gem install rdoc; exit 0
RUN gem install bigdecimal json aquatone

VOLUME /root/aquatone/

CMD aquatone-discover