# gcd
Local instance of google datastore running in a Docker container.

```
docker build -t erikdejonge/gcd .
docker run --rm -v [absolutepath]/localdatastore:/localdatastore erikdejonge/gcd /gcd-v1beta2-rev1-2.1.1/gcd.sh create -d localdatastore /localdatastore
docker run -Pd -v [absolutepath]/localdatastore:/localdatastore erikdejonge/gcd
```

## osx
```
$ boot2docker ip
192.168.59.103
```
```
$ docker ps
PORTS: 0.0.0.0:49153->8080/tcp
```
```
Datastore available on
192.168.59.103:49153
```
```
Admin on
http://192.168.59.103:49153/_ah/admin
```
