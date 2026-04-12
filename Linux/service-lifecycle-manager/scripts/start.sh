#!/bin/bash

if [ -f temp/service.pid ]; then
  OLD_PID=$(cat temp/service.pid)

  if ps -p "$OLD_PID" > /dev/null; then
    echo "Service is already running with PID $OLD_PID"
    exit 1
  else 
    echo "Removing stale PID file..."
    rm temp/service.pid
  fi
fi

echo "starting the dummy process..."
sleep 500 &
PID=$!

echo "Current PID:$PID saved into temp/service.pid"
echo "$PID" > temp/service.pid

if ps -p "$PID" > /dev/null; then
  echo "$(date) INFO: service started with PID:$PID" >> logs/service.log
  echo "Service started successfully"
else
  echo "Failed to start service"
fi
