FROM tiangolo/uwsgi-nginx-flask:python2.7

#RUN apk add --no-cache ca-certificates
#RUN apk add --no-cache gcc musl-dev
#RUN apk add --no-cache bash
#RUN apk --update add --no-cache g++

RUN apt-get install build-essentia

#RUN apt-get update && \
#    apt-get -y install gcc
    
    
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./app /app
