#!/bin/bash

DIR_NODE_BIN="../grin/target/release"
DIR_DATA="."

$DIR_DATA/stop.sh
echo -e "Starting \n";

$DIR_NODE_BIN/grin server run > $DIR_DATA/stdout.txt 2> $DIR_DATA/stderr.txt & echo $! > $DIR_DATA/node.pid