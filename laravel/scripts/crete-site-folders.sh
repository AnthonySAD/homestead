#!/usr/bin/env bash

if [ ! -d $1 ];then
	mkdir $1
else
	echo "Folder exists👌"
fi