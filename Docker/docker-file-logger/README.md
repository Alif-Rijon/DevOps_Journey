# Docker File Logger App

## Overview

Docker File Logger App is a beginner-friendly DevOps project that demonstrates core Docker concepts including image creation, container management, bind mounts, named volumes, container logs, and persistent storage.

The application runs inside a Docker container, reads data from a bind-mounted file, generates timestamped log entries, and stores logs in a Docker-managed named volume.

## Features

* Dockerized Python application
* Reads data from a bind-mounted file
* Generates timestamped log entries
* Stores logs in a persistent Docker volume
* Supports live file updates without rebuilding the image
* Demonstrates Docker logging and container lifecycle management

## Technologies Used

* Python 3.12
* Docker
* Linux Command Line

## Project Structure

```text
docker-file-logger/
├── app.py
├── input.txt
├── Dockerfile
└── README.md
```

## Application Workflow

```text
                GITHUB PROJECT

docker-file-logger/
│
├── app.py  ───────────────┐
├── input.txt              │
├── Dockerfile            │
└── README.md             │
                           │
                           ▼

                DOCKER RUN TIME

HOST MACHINE
   │
   ├── input.txt  ───────► (Bind Mount)
   │                         /app/input.txt
   │
   ▼
CONTAINER
   │
   ├── app.py runs
   ├── reads input.txt
   ├── writes logs
   │
   ▼
NAMED VOLUME
   └── /logs/app.log (persistent storage)
```

## Docker Concepts Demonstrated

### Dockerfile

* FROM
* WORKDIR
* COPY
* CMD

### Container Management

* docker build
* docker run
* docker ps
* docker stop
* docker rm

### Container Operations

* Detached Mode
* Docker Logs
* Docker Exec

### Storage

* Bind Mounts
* Named Volumes
* Persistent Data

## Build the Image

```bash
docker build -t filelogger .
```

## Create Volume

```bash
docker volume create applogs
```

## Run the Container

```bash
docker run -d \
--name logger \
-v $(pwd)/input.txt:/app/input.txt \
-v applogs:/logs \
filelogger
```

## View Container Logs

```bash
docker logs logger
```

## Enter the Running Container

```bash
docker exec -it logger /bin/bash
```

## Verify Persistent Volume Data

```bash
docker run --rm -it -v applogs:/data ubuntu
```

```bash
cat /data/app.log
```

## Test Bind Mount

Modify the local file:

```bash
echo "Docker is awesome" >> input.txt
```

The running container will automatically read the updated content without rebuilding the image.

## Cleanup

Stop and remove the container:

```bash
docker stop logger
docker rm logger
```

Remove the volume:

```bash
docker volume rm applogs
```

## Learning Outcomes

By completing this project, I learned:

* Docker image creation
* Container lifecycle management
* Dockerfile fundamentals
* Detached container execution
* Container log inspection
* Interactive container access
* Bind mounts for development workflows
* Named volumes for persistent storage
* Basic DevOps data management practices

## Author

Alif Rijon

Computer Science and Engineering Student | DevOps Learner
