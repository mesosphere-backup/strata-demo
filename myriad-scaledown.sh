#!/bin/bash   

if [ -z "$MASTER" ]; then
    echo "Need to set MASTER (export MASTER=104.154.73.141)"
    exit 1
fi

if [ "$#" -ne 1 ]; then
	echo "flexup requires 1 parameter which is the number of instances (./flexdown 1)"
		
	exit 1
fi

# curl -H 'Content-Type: application/json' -X PUT -d '{ "instances":1 }' http://104.154.73.141:8192/api/cluster/flexdown
CURL="curl -H 'Content-Type: application/json' -X PUT -d '{ \"instances\":$1 }' http://$MASTER:8192/api/cluster/flexdown"
echo $CURL
eval $CURL



