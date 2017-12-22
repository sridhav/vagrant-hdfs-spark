#!/usr/bin/env bash

SCRIPT=`realpath -s $0`
SCRIPTPATH=`dirname $SCRIPT`

cd /opt
tar -xvzf $SCRIPTPATH/../resources/spark.tgz
mv spark-2.2.1-bin-hadoop2.7 spark-2.2.1
chown -R hadoop:hadoop spark-2.2.1

cat $SCRIPTPATH/../hosts/slaves > /opt/spark-2.2.1/conf/slaves
cat $SCRIPTPATH/spark-env.sh > /opt/spark-2.2.1/conf/spark-env.sh
cat $SCRIPTPATH/bashrc_exports >> /home/hadoop/.bashrc
