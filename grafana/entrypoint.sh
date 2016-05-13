#!/bin/bash

PATH=/bin:/usr/bin:/sbin:/usr/sbin
NAME=grafana-server

GRAFANA_USER=grafana
GRAFANA_GROUP=grafana
GRAFANA_HOME=/usr/share/grafana
CONF_DIR=/etc/grafana
WORK_DIR=$GRAFANA_HOME
DATA_DIR=/var/lib/grafana
PLUGINS_DIR=/var/lib/grafana/plugins
LOG_DIR=/var/log/grafana
CONF_FILE=$CONF_DIR/grafana.ini


DAEMON_OPTS="--config=${CONF_FILE} cfg:default.paths.data=${DATA_DIR} cfg:default.paths.logs=${LOG_DIR} cfg:default.paths.plugins=${PLUGINS_DIR}"
cd $WORK_DIR
/usr/sbin/grafana-server $DAEMON_OPTS
