#!/bin/bash   

if [ -z "$MASTER" ]; then
    echo "Need to set MASTER (export MASTER=104.154.73.141)"
    exit 1
fi

if [ "$#" -ne 1 ]; then
    	echo "script takes json file as an argument"
	exit 1;
fi

CURL="curl -X POST -H 'Content-Type: application/json' $MASTER:8080/v2/apps -d@$@"
echo $CURL
eval $CURL
