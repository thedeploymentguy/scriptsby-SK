#!/bin/bash

cmd=$1
seconds=$2

echo "Executing: ${cmd} for $seconds seconds"
$cmd&

cmdpid=$!
sleep $seconds

if [ -d /proc/$cmdpid ]
then
  echo "terminating program PID:$cmdpid"
  kill -9 $cmdpid
fi
