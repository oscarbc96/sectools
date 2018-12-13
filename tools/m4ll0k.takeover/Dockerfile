FROM python:2.7-alpine3.8

RUN pip install urllib3 requests

ADD https://github.com/m4ll0k/takeover/archive/master.zip /takeover.zip

RUN unzip takeover.zip && mv /takeover-master /takeover && rm takeover.zip

WORKDIR /takeover

CMD python takeover.py