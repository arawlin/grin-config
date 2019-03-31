#!/bin/bash

DIR_DATA="."

if [ -f $DIR_DATA"/miner.pid" ]; then
	pid=`cat $DIR_DATA"/miner.pid"`
	echo $pid
	kill $pid
	

	echo -ne "Stoping Miner"

    while true; do
        [ ! -d "/proc/$pid/fd" ] && break
        echo -ne "."
        sleep 1
    done
	rm -r $DIR_DATA"/miner.pid"

    DATE=$(date -d "now" +'%Y_%m_%d-%H_%M')
    if [ ! -d $DIR_DATA/logs ]; then
        mkdir $DIR_DATA/logs
    fi
    tar -pczf $DIR_DATA/logs/stderr-miner-$DATE.txt.tar.gz stderr_miner.txt stdout_miner.txt
	
    echo -ne "\rMiner Stopped.    \n"
fi