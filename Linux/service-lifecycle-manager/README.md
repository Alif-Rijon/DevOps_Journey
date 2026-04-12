# Service Lifecycle Manager

## 📌 Overview

This project is a **basic DevOps-style service management tool** built using Bash scripting.
It simulates how real systems manage services by handling the full lifecycle:

* Start a service
* Check service status
* Log activities
* Stop the service
* Archive logs

The service used here is a simple dummy process (`sleep 500`) for learning purposes.

---

## 📂 Project Structure

```
service-lifecycle-manager/
├── archive/              # Stores archived logs
├── logs/                 # Active log file
├── scripts/              # All lifecycle scripts
│   ├── start.sh
│   ├── status.sh
│   └── stop.sh
└── temp/                # Temporary files (PID storage)
```

---

## ⚙️ How It Works

### 1. start.sh

* Starts a dummy background process
* Saves the process ID (PID) into `temp/service.pid`
* Writes a start log into `logs/service.log`
* Prevents duplicate service start
* Handles stale PID files

---

### 2. status.sh

* Reads PID from `temp/service.pid`
* Checks if the process is running using `ps`
* Displays:

  * Running
  * Stopped
  * Missing PID file

---

### 3. stop.sh

* Reads PID from file
* Stops the process using `kill`
* Logs stop event
* Moves log file to `archive/` with timestamp
* Removes PID file

---

## 🚀 How to Run

From the project root directory:

### Start Service

```
./scripts/start.sh
```

### Check Status

```
./scripts/status.sh
```

### Stop Service

```
./scripts/stop.sh
```

---

## 📝 Log Example

```
Sat Apr 12 10:30:00 INFO: service started with PID: 1234
Sat Apr 12 10:35:00 INFO: PID 1234 is terminated
```

Archived logs are stored in:

```
archive/service-YYYY-MM-DD-HH-MM-SS.log
```

---

## 🛠️ Commands Used

* `mkdir`, `touch` → project setup
* `echo`, `cat` → file operations
* `ps`, `kill` → process management
* `grep`, `find` → searching (optional use)
* `mv` → log archiving
* `chmod` → script permissions

---

## 💡 Key Concepts Learned

* Process lifecycle management
* PID handling and validation
* Logging practices
* Handling stale state
* Bash scripting fundamentals
* Basic DevOps thinking

---

## ⚠️ Notes

* Always run scripts from the project root directory.
* The script auto-creates required folders (`logs/`, `temp/`, `archive/`).
* This is a learning project, not a production-ready service manager.

---

## 📈 Future Improvements

* Add restart functionality
* Improve log formatting
* Add error handling and exit codes
* Support real services instead of dummy process
* Implement log rotation policies

---

## ✅ Status

✔ Version 1 Complete (Basic Lifecycle Working)

---

## 👨‍💻 Author

Alif Rijon
