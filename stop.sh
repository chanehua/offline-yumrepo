#!/bin/bash
if  ps aux|grep "MultithreadedSimpleHTTPServer" ;then
	ps aux|grep "MultithreadedSimpleHTTPServer"|grep -v grep|awk '{print $2}'|xargs kill
fi

