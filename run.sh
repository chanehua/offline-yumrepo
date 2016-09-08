#!/bin/bash
base_dir=$(cd `dirname $0` && pwd)
cd $base_dir
. ../config.cfg
#docker-compose -p repo up -d
grep sry_yumrepo /etc/rc.local || echo "nohup python -m SimpleHTTPServer $CONFIGSERVER_PORT 1>/tmp/sry_yumrepo.log 2>&1 &" >> /etc/rc.local 
grep "SimpleHTTPServer $CONFIGSERVER_PORT" || nohup python -m SimpleHTTPServer $CONFIGSERVER_PORT 1>/tmp/sry_yumrepo.log 2>&1 &
