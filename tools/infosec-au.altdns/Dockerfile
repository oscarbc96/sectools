FROM python:2.7-alpine3.8

ADD https://github.com/infosec-au/altdns/archive/master.zip /altdns.zip

RUN unzip altdns.zip && mv /altdns-master /altdns && rm altdns.zip

WORKDIR /altdns

RUN pip install -r requirements.txt

CMD python altdns.py