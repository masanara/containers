FROM ubuntu
MAINTAINER masanara <masanara@gmail.com>
RUN apt-get update && apt-get install -y snmptrapd
COPY snmptrapd.conf /etc/snmp/snmptrapd.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
USER root
RUN apt-get clean && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*
EXPOSE 162/udp
CMD ["/entrypoint.sh"]
