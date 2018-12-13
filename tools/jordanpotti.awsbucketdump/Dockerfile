FROM python:3.7-alpine3.8

ADD https://github.com/jordanpotti/awsbucketdump/archive/master.zip /awsbucketdump.zip

RUN unzip awsbucketdump.zip && mv /AWSBucketDump-master /awsbucketdump && rm awsbucketdump.zip

WORKDIR /awsbucketdump

RUN pip install -r requirements.txt

CMD python AWSBucketDump.py