#!/bin/bash

DIR_DATA="."

if [ -f $DIR_DATA"/node.pid" ]; then
	pid=`cat $DIR_DATA"/node.pid"`
	echo $pid
	kill $pid
	

	echo -ne "Stoping Node"

    while true; do
        [ ! -d "/proc/$pid/fd" ] && break
        echo -ne "."
        sleep 1
    done
	rm -r $DIR_DATA"/node.pid"
	
    echo -ne "\rNode Stopped.    \n"
fi