#!/bin/bash   

if [ -z "$MASTER" ]; then
    echo "Need to set MASTER (export MASTER=104.154.73.141)"
    exit 1
fi

if [ "$#" -ne 2 ]; then
    	echo "script takes 2 arguments; the marathon appid and the number of instances"
	exit 1;
fi

# curl -X PUT -H 'Content-Type: application/json' $MASTER:8080/v2/apps/strata -d '{ "instances" : 4}'
CURL="curl -X PUT -H 'Content-Type: application/json' $MASTER:8080/v2/apps/$1 -d '{ \"instances\" : $2}'"
echo $CURL
eval $CURL
