FROM tiangolo/uwsgi-nginx:python2.7

MAINTAINER Jennifer Liao <cutejaneii@hotmail.com>

ENV NGINX_MAX_UPLOAD 4m
ENV NGINX_WORKER_PROCESSES auto
ENV LISTEN_PORT 8080
EXPOSE 8080

# Get and install software
RUN pip install flask
RUN pip install wget

# Install py4j / Cassandra-driver / pandas
RUN pip install py4j
RUN pip install cassandra-driver
RUN pip install pandas

RUN pip install pypinyin
RUN pip install regex requests jieba arrow pyYaml

# copy nginx setting
#COPY nginx.conf /etc/nginx/conf.d/

COPY ./app /app

# Set workDir
WORKDIR /app
