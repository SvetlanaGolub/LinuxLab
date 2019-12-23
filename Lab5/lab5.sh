#!/bin/bash

ps axo euid,ruid,comm | tail -n +2 | while read line
do
	arr=($line)
	if [ ${arr[0]} != ${arr[1]} ]
	then
		echo ${arr[2]}
	fi
done
