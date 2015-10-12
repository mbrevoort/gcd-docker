# gcd
Local instance of google datastore running in a Docker container.

#### build
```
docker build -t mbrevoort/gcd:v1beta2-rev1-3.0.2 .
```
#### pull
```
docker pull mbrevoort/gcd
```

#### create repository
```
docker run --rm -v [absolutepath]/data:/data mbrevoort/gcd /gcd/gcd.sh create -d data /data
```

#### run datastore
```
docker run -Pd -v [absolutepath]/data:/data mbrevoort/gcd
```

#### on OSX using docker machine

Find IP by listing docker-machine VMs
```
$ docker-machine ls
NAME      ACTIVE   DRIVER       STATE     URL                         SWARM
default            virtualbox   Running   tcp://192.168.99.100:2376
```

```
$ docker ps
PORTS: 0.0.0.0:49153->8080/tcp
```

```
Datastore available on
192.168.99.100:49153
```

```
Admin on
http://192.168.99.100:49153/_ah/admin
```
