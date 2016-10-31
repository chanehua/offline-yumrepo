#!/bin/bash
set -e
base_dir=$(cd `dirname $0` && pwd)
cd $base_dir

. ../config.cfg

function check_port(){
	name=$1
	port=$2
	netstat -lntp|grep $port &>/dev/null  && echo "$name is ok" || (echo "$name is error";exit 1)
}

check_port yumrepo $CONFIGSERVER_PORT

