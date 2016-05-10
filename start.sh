#!/bin/bash
IP=`ifconfig eth0 | grep "inet addr" | cut -d ':' -f 2 | cut -d ' ' -f 1`
echo $IP
tcp-proxy -l="$IP:8080" -r "127.0.0.1:8080" &
./gcd/gcd.sh "$@"
pkill -P $$
