#!/bin/bash
set -e
base_dir=$(cd `dirname $0` && pwd)
cd $base_dir

. ../offlinesry/config.cfg

curl -s -o /dev/null -w "%{http_code}" --connect-timeout 10 http://$CONFIGSERVER_IP:$CONFIGSERVER_PORT/|grep 200
