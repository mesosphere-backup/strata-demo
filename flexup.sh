#!/bin/bash   

if [ -z "$MASTER" ]; then
    echo "Need to set MASTER (export MASTER=104.154.73.141)"
    exit 1
fi

if [ "$#" -ne 2 ]; then
	echo "flexup requires 2 parameters the number of instances and the profile (./flexup.sh 2 small)"
	echo "profile options: "
	echo "	small= 	(cpu: 2, mem: 2048)"
	echo "	medium= (cpu: 3, mem: 3072)"
	echo "	large= 	(cpu: 4, mem: 4096)"
		
	exit 1
fi

CURL="curl -H 'Content-Type: application/json' -X PUT -d '{ \"instances\":$1, \"profile\": \"$2\" }' http://$MASTER:8192/api/cluster/flexup"
echo $CURL
eval $CURL


