#!/bin/bash
echo "Backup script started"
cp data/users.txt logs/users_backup.txt
cp data/server.txt logs/server_backup.txt
echo "Backup completed"
