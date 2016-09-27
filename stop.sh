#!/bin/bash
if  ps aux|grep "SimpleHTTPServer" ;then
	ps aux|grep "SimpleHTTPServer"|grep -v grep|awk '{print $2}'|xargs kill
fi

