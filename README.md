# docker.uwsgi-nginx-flask

<pre><code>$ docker build -t cutejaneii/docker.uwsgi-nginx-flask .
$ docker run -d -p (host_port):80 cutejaneii/docker.uwsgi-nginx-flask
$ docker run -d -v /host/app:/app --net=host cutejaneii/docker.uwsgi-nginx-flask
</code></pre>


