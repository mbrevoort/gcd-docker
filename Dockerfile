FROM    phusion/baseimage:0.9.15
ENV     HOME /root
RUN     /etc/my_init.d/00_regen_ssh_host_keys.sh
CMD     ["/sbin/my_init"]
RUN     apt-get update; apt-get install -y build-essential; apt-get install -y ca-certificates; apt-get install -y wget; apt-get install -y vim; apt-get install -y procps; apt-get install -y locate; apt-get install -y git; apt-get install -y links; apt-get update; apt-get -y upgrade; apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*; mkdir -p /etc/my_init.d
RUN     apt-get update; apt-get install -y zlib1g-dev; apt-get install -y python; apt-get install -y python-dev; apt-get install -y python-pip; apt-get install -y python-openssl; pip install multiprocessing; pip install gevent; pip install redis; pip install msgpack-python; pip install ujson; pip install inflection; pip install python-cjson; pip install celery;
RUN     apt-get update; apt-get install -y openjdk-7-jdk; apt-get install -y wget
WORKDIR /
RUN     wget -q http://storage.googleapis.com/gcd/tools/gcd-v1beta2-rev1-2.1.1.zip; apt-get install -y unzip; apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*; unzip -q /gcd-v1beta2-rev1-2.1.1.zip
RUN     updatedb; apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ADD     Dockerfile /
CMD     ["/gcd-v1beta2-rev1-2.1.1/gcd.sh",  "start", "--host=0.0.0.0", "/localdatastore"]
EXPOSE  8080


