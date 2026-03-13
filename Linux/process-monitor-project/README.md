# Process Monitor Project

This project is part of my DevOps learning journey

## Project Goal:
 practices linux process management commands.

## Skills Practiced:
- mkdir
- touch
- echo
- cat
- ps 
- top
- kill
- grep
- chmod
- bash scripting

## Command used:
```bash
- sleep 300 &
- PID=&!
- ps -p $PID
- top -p $PID
- kill $PID
```

## Project Structure:

process-monitor-project
    ├── logs
    │   └── process.log
    ├── README.md
    ├── scripts
    │   └── monitor.sh
    └── temp
        └── current_process.txt

## What this project does:
- starts a background process
- finds its PID
- save PID in temp file
- logs process details
- kills the process
- verifies that it stopped 

## What the scripts does:
`monitor.sh` starts a dummy background process,save its PID,shows process info ,stores process output in a file,kills the process,and checks whether it stopped.

## How to Run:
```bash
chmod +x scripts/monitor.sh
./scripts/monitor.sh
```
