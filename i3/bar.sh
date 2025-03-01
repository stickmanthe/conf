#!/bin/bash

while true; do
	CPU="$(awk '{u=$2+$4; t=$2+$4+$5; if (NR==1){u1=u; t1=t;} else print ($2+$4-u1) * 100 / (t-t1) ""; }' \
<(grep 'cpu ' /proc/stat) <(sleep 1;grep 'cpu ' /proc/stat))"
	MEM="$(free | grep Mem | awk '{print $3/$2 * 100.0}')" 
	HDD="$(df --output=pcent / | tail -n 1 | tr -d ' %')" 
	DATE="$(date +'%Y-%m-%d %X')"
	echo "cpu: "${CPU%.*}%", mem: "${MEM%.*}"%, hdd: "${HDD}"%, "${DATE}
done
