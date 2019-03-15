FROM tiangolo/uwsgi-nginx-flask:python2.7-alpine3.8

RUN apk add --no-cache ca-certificates
RUN apk add --no-cache gcc musl-dev
RUN apk add --no-cache bash

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./app /app
