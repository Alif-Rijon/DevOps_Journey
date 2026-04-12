#!/bin/bash

if [ -f temp/service.pid ]; then
 PID=$(cat temp/service.pid)
 echo "PID: $PID"

 if ps -p "$PID" > /dev/null; then
  kill "$PID"
  echo "Terminated service with PID $PID"
  echo "$(date) INFO: PID $PID is terminated" >> logs/service.log

  if [ -f logs/service.log ]; then
   TIMESTAMP=$(date +"%Y-%m-%d-%H-%M-%S")
   mv logs/service.log archive/service-$TIMESTAMP.log
   echo "Log archived to archive/service-$TIMESTAMP.log"
  fi

  rm temp/service.pid
 else
  echo "No active PID found"
  rm temp/service.pid
 fi
else
 echo "PID file does not exist"
fi
