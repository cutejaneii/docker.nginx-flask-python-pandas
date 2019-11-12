# docker.nginx-flask-python-pandas-nfs

## 指令

<pre><code>$ docker run -d -v /var/docker_volume/nginx/app:/app --net=host cutejaneii/docker.nginx-flask-python-pandas:with-nfs</code></pre>


## 備註
uwsgi.ini加上lazy-apps=true，避免cassandra-driver在存取資料時發生client timeout.
