# DevOps Linux mini project

This is my Linux mini project for DevOps learning.

## What I practiced
- mkdir
- touch
- echo
- cat
- grep
- find
- chmod
- bash script execution

## Project Structure
```text
devops-project/
├── README.md
├── data/
│   ├── servers.txt
│   └── users.txt
├── logs/
│   ├── app.log
│   ├── system.log
│   ├── servers_backup.txt
│   └── users_backup.txt
└── scripts/
    └── backup.sh
```

## Script
`backup.sh` copies data files into backup files inside the `logs/` folder.

## How to Run
```bash
chmod +x scripts/backup.sh
./scripts/backup.sh
```
