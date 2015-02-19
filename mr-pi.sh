#!/bin/bash   

if [ -z "$YARN_EXAMPLES" ]; then
    echo "Need to set YARN_HOME and YARN_EXAMPLES"
	echo "example: export YARN_HOME=/opt/mapr/hadoop/hadoop-2.5.1"
	echo "example: export YARN_EXAMPLES=\$YARN/share/hadoop/mapreduce"
    exit 1
fi

#yarn jar $YARN_EXAMPLES/hadoop-mapreduce-examples-2.5.1-mapr-1501.jar pi 16 1000
yarn jar $YARN_EXAMPLES/hadoop-mapreduce-examples-2.5.1-mapr-1501.jar pi
