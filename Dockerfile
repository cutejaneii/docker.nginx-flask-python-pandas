FROM tiangolo/uwsgi-nginx-flask:python2.7

#RUN apk add --no-cache ca-certificates
#RUN apk add --no-cache gcc musl-dev
#RUN apk add --no-cache bash
#RUN apk --update add --no-cache g++

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./app /app
