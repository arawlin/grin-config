#!/bin/bash

DIR_NODE_BIN="../tool"
DIR_DATA="."

$DIR_DATA/stop_miner.sh
echo -e "Starting Miner\n";

$DIR_NODE_BIN/grin-miner > $DIR_DATA/stdout_miner.txt 2> $DIR_DATA/stderr_miner.txt & echo $! > $DIR_DATA/miner.pid