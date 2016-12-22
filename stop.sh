#!/bin/bash
if  ps aux| grep -v grep | grep "ForkStaticServer" ;then
	ps aux|grep "ForkStaticServer"|grep -v grep|awk '{print $2}'|xargs kill
fi

