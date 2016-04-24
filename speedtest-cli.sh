#!/bin/bash
server_list=`speedtest --list | grep -o ^[0-9]* | sort -h`
echo $server_list
for server_id in $server_list
do
	echo $server_id
	speedtest --server $server_id
done
