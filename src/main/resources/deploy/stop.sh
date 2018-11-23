#!/bin/sh
############################################################
# Stop application
#
# @author liuchao
# @Email liuchao@360.net
# @ERP liuchao02
############################################################

# init app
BIN_DIR="$(cd `dirname $0`; pwd)"
APP_DIR="`dirname $BIN_DIR`"
PID_DIR="@maven.profile.logpath@"
PID_FILE="$PID_DIR/app.pid"
THE_APP_NAME="@maven.project.name@"

PIDS="`ps -ef|grep $THE_APP_NAME|grep -v grep|grep -v stop.sh|awk '{print $2}'`"
for PID in $PIDS
do
    echo "Stopping application with PID:$PID ..."
    kill -9 $PID
    if [ $? -eq 0 ]; then
        echo "Stop application success: pid=$PID"
    else
        echo "Stop application fail: pid=$PID"
        exit 2
    fi
done
rm -rf $PID_FILE
echo "All application $THE_APP_NAME stopped success"
exit 0