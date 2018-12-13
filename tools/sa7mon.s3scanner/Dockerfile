FROM python:3.7-alpine3.8

ADD https://github.com/sa7mon/s3scanner/archive/master.zip /s3scanner.zip

RUN unzip s3scanner.zip && mv /S3Scanner-master /s3scanner && rm s3scanner.zip

WORKDIR /s3scanner

RUN pip install -r requirements.txt

CMD python s3scanner.py