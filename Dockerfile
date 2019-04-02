FROM tiangolo/uwsgi-nginx:python2.7

MAINTAINER Jennifer Liao <cutejaneii@hotmail.com>

WORKDIR /

# Get and install software
RUN pip install flask wget
RUN pip install py4j pandas cassandra-driver
RUN pip install requests pypinyin ConfigParser arrow regex

# copy nginx setting
COPY nginx.conf /etc/nginx/conf.d/
COPY uwsgi.ini /etc/uwsgi/uwsgi.ini


COPY app /app

WORKDIR /app
