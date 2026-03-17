# Setup Automation Script

A simple Python automation script that creats a basic project structure.

## Features
- Creates main folders:
  - `data`
  - `logs`
  - `scripts`
- Creates nested folder:
  - `logs/app`
- Creates log file:
  - `logs/app/app.log`
- Safe to run multiple times without breaking

## Project Structure
```text
Setup_Automation_Script/
├── data
├── logs
│   └── app
│       └── app.log
├── scripts
├── setup.py
└── README.md
```
## Requirements

- Python 3
- `os` module (built-in)

## How to Run

### Option 1: Run with Python

```bash
python3 setup.py
```

### Option 2: Run as executable

First give execute permission:

```bash
chmod +x setup.py
```

Then run:

```bash
./setup.py
```
## Example Output

### First Run

```text
Created: data
Created: logs
Created: scripts
App folder created.
File created.
Setup complete.
Current directory contents:
['data', 'logs', 'scripts', 'setup.py']
```

### Second Run

```text
Already exists: data
Already exists: logs
Already exists: scripts
App folder already exists under logs.
File already exists.
Setup complete.
Current directory contents:
['data', 'logs', 'scripts', 'setup.py']
```
## Concepts Practiced

- Python lists
- for loop
- if condition
- file and folder handling
- `os.path.exists()`
- `os.mkdir()`
- `os.listdir()`
- file creation
- idempotent scripting

## Why This Project Matters

This project is a beginner-friendly automation task that builds the foundation for DevOps scripting. It demonstrates how to automate environment setup, create folders, manage files, and write scripts that can be executed safely multiple times.

## Author

Alif Rijon
