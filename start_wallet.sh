#!/bin/bash

DIR_NODE_BIN="../tool"
DIR_DATA="."

$DIR_DATA/stop_wallet.sh
echo -e "Starting Wallet\n";

cat $DIR_DATA/wallet_pass | $DIR_NODE_BIN/grin wallet listen > $DIR_DATA/stdout_wallet.txt 2> $DIR_DATA/stderr_wallet.txt & echo $! > $DIR_DATA/wallet.pid