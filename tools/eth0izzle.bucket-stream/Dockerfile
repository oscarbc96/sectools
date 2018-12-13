FROM python:3.7-alpine3.8

ADD https://github.com/eth0izzle/bucket-stream/archive/master.zip /bucket-stream.zip

RUN unzip bucket-stream.zip && mv /bucket-stream-master /bucket-stream && rm bucket-stream.zip

WORKDIR /bucket-stream

RUN pip install -r requirements.txt

CMD python bucket-stream.py