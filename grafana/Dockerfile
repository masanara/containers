FROM ubuntu
MAINTAINER masanara <masanara@gmail.com>
RUN apt-get update && apt-get install -y wget adduser libfontconfig
RUN wget https://grafanarel.s3.amazonaws.com/builds/grafana_3.0.1_amd64.deb && \
  dpkg -i grafana_3.0.1_amd64.deb
RUN apt-get purge -y --auto-remove wget && \
  apt-get clean
RUN mkdir -p /var/log/grafana /var/lib/grafana && \
  chown grafana:grafana /var/log/grafana /var/lib/grafana
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
EXPOSE 3000
USER grafana
CMD ["/entrypoint.sh"]
