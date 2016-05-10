FROM golang:1.6
WORKDIR /

RUN \
  apt-get update && \
  apt-get install -y openjdk-7-jre wget unzip net-tools && \
  rm -rf /var/lib/apt/lists/* && \
  wget -q http://storage.googleapis.com/gcd/tools/gcd-grpc-1.0.0.zip && \
  unzip -q /gcd-grpc-1.0.0.zip && \
  rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
ENV PATH $JAVA_HOME/bin:$PATH
COPY start.sh /start.sh

RUN     go get github.com/lumanetworks/go-tcp-proxy/cmd/tcp-proxy

VOLUME /data
EXPOSE 8080
ADD Dockerfile /

CMD     ["/start.sh",  "start", "/data"]
EXPOSE  8080
