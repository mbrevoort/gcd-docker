# gcd
Local instance of google datastore running in a Docker container.

```
docker build -t erikdejonge/gcd .
docker run --rm -v ./localdatastore:/localdatastore erikdejonge/gcd /gcd-v1beta2-rev1-2.1.1/gcd.sh create -d localdatastore /localdatastore
docker run -Pd -v ./localdatastore:/localdatastore erikdejonge/gcd 
```
