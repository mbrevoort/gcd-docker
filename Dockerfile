FROM alpine:3.2
RUN apk --update add openjdk7-jre wget unzip bash

WORKDIR /
RUN     wget -q http://storage.googleapis.com/gcd/tools/gcd-v1beta2-rev1-3.0.2.zip
RUN     unzip -q /gcd-v1beta2-rev1-3.0.2.zip && mv /gcd-v1beta2-rev1-3.0.2 /gcd
RUN     apk del wget unzip

VOLUME /data
EXPOSE 8080
ADD Dockerfile /

CMD     ["/gcd/gcd.sh",  "start", "--host=0.0.0.0", "/data"]
EXPOSE  8080
