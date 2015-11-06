FROM phusion/baseimage:0.9.17

ENV PHORONIX_VERSION 5.8.0

RUN cd /tmp &&\
 curl -O http://phoronix-test-suite.com/releases/repo/pts.debian/files/phoronix-test-suite_${PHORONIX_VERSION}_all.deb &&\
 apt-get update &&\
 apt-get install php5-cli php5-gd php5-json php5-sqlite -y &&\
 dpkg -i phoronix-test-suite_${PHORONIX_VERSION}_all.deb &&\
 apt-get install -f -y

ADD runit-run-phoromatic.sh /etc/service/phoromatic/run
ADD user-config.xml /etc/phoronix-test-suite.xml
ADD runit-log-phoromatic.sh /etc/service/phoromatic-log/run

EXPOSE 9090 9091

VOLUME ["/var/cache/phoronix-test-suite/download-cache/", "/var/lib/phoronix-test-suite/phoromatic"]
