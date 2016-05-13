FROM ubuntu
MAINTAINER masanara <masanara@gmail.com>
RUN apt-get update && \
  apt-get install -y collectd-utils snmp snmp-mibs-downloader
RUN apt-get purge -y --auto-remove wget && \
  apt-get clean
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
COPY collectd.conf /etc/collectd/collectd.conf
CMD ["/entrypoint.sh"]
