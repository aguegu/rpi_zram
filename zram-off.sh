#!/bin/bash

cores=$(nproc --all)

core=0
while [ $core -lt $cores ]; do
	swapoff /dev/zram$core
	let core=core+1
done

modprobe -r zram
