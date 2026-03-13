#!/bin/bash

echo "Starting dummy process...."
sleep 300 &
PID=$!

echo "Dummy process  started with PID: $PID"
ps -p $PID >temp/current_process.txt
cat temp/current_process.txt

echo "Saving process info to logs/process.log"
ps aux | grep $PID >logs/process.log

echo "Showing process details:"
ps -p $PID

echo "Killing process...."
kill $PID

echo "Checking if the process is still running:"
ps -p $PID

echo "Done"
