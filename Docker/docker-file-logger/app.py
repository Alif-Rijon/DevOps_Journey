import time 
from datetime import datetime

INPUT_FILE = "/app/input.txt"
LOG_FILE = "/logs/app.log"

print("File Logger App started...")

while True:
    try:
        #Read input file 
        with open(INPUT_FILE,"r") as f:
            content = f.read().strip()

        timestamp =datetime.now().strftime("%D-%m-%y %H:%M:%S")

        log_message = f"[{timestamp}] {content}"

        #Print to console (visible via docker logs)
        print(log_message)

        #Save to persistent volume 
        with open(LOG_FILE, "a") as log:
            log.write(log_message + "\n")

        time.sleep(10)
    except Exception as e:
        print(f"Error: {e}")
        time.sleep(10)
