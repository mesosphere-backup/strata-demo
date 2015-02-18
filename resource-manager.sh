#!/bin/bash   

if [ "$#" -ne 1 ]; then
    	echo "1 parameter required (start, stop)"
	exit 1;
fi

sudo /opt/mapr/hadoop/hadoop-2.5.1/sbin/yarn-daemon.sh $1 resourcemanager
