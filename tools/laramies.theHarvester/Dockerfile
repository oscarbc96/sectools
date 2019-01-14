FROM python:3.7-alpine3.8

ADD https://github.com/laramies/theHarvester/archive/master.zip /theHarvester.zip

RUN unzip theHarvester.zip && mv /theHarvester-master /theHarvester && rm theHarvester.zip

WORKDIR /theHarvester

RUN pip install -r requirements.txt

CMD python theHarvester.py