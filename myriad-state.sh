#!/bin/bash   

if [ -z "$MASTER" ]; then
    echo "Need to set MASTER (export MASTER=104.154.73.141)"
    exit 1
fi

CURL="curl -H 'Content-Type: application/json' -X GET http://$MASTER:8192/api/state"
echo $CURL
eval $CURL



