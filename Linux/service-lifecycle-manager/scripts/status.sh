#!/bin/bash

if [ -f temp/service.pid ]; then 
 PID=$(cat temp/service.pid)
 echo "PID: $PID"

 if ps -p "$PID" > /dev/null; then
  echo "PID is running..."
 else
  echo "PID is dead"
 fi
else
 echo "temp/service.pid doesn't exist"
fi 
