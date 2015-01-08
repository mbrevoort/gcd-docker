# gcd
Local instance of google datastore running in a Docker container.

#### build
```
docker build -t erikdejonge/gcd .
```
#### pull
```
docker pull erikdejonge/gcd .
```

#### create repository
```
docker run --rm -v [absolutepath]/localdatastore:/localdatastore erikdejonge/gcd /gcd-v1beta2-rev1-2.1.1/gcd.sh create -d localdatastore /localdatastore
```

#### run datastore
```
docker run -Pd -v [absolutepath]/localdatastore:/localdatastore erikdejonge/gcd
```

#### on osx
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
