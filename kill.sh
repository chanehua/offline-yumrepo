#!/bin/bash
. ../config.cfg
ps aux|grep "SimpleHTTPServer $CNOFIGSERVER_PORT"|grep -v grep|awk '{print $2}'|xargs kill
