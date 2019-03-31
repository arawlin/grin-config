#!/bin/bash

DIR_DATA="."

if [ -f $DIR_DATA"/wallet.pid" ]; then
	pid=`cat $DIR_DATA"/wallet.pid"`
	echo $pid
	kill $pid
	

	echo -ne "Stoping Wallet"

    while true; do
        [ ! -d "/proc/$pid/fd" ] && break
        echo -ne "."
        sleep 1
    done
	rm -r $DIR_DATA"/wallet.pid"
	
    echo -ne "\rWallet Stopped.    \n"
fi