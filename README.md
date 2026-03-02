#  DevOps Task 3 - Application Deployment

##  Project Overview
This project demonstrates deployment of a production-ready React application.

The application was containerized using Docker, automated with Jenkins, deployed on AWS EC2, and monitored using Uptime Kuma.

---

## Tools & Technologies

- AWS EC2 (Amazon Linux 2023)
- Docker & Docker Compose
- Jenkins (CI/CD)
- DockerHub
- Git & GitHub
- Bash Scripting
- Uptime Kuma (Monitoring)

## Application Repository

Source Application:
https://github.com/sriram-R-krishnan/devops-build

Deployment Port:
HTTP - Port 80

---

## Docker Setup

### Dockerfile
Used Nginx to serve the React build files.

### docker-compose.yml
Used to run container on port 80.

---

## Bash Scripts

### build.sh
Builds Docker image.

### deploy.sh
Stops old container and deploys latest image

## Version Control

- Git CLI used for all operations.
- Development done using **dev branch**.
- Files included:
  - .gitignore
  - .dockerignore

---

## DockerHub Repositories

### DEV Repository (Public)
https://hub.docker.com/r/gobikaka/react-dev

### PROD Repository (Private)
https://hub.docker.com/r/gobikaka/react-prod

---

## Jenkins CI/CD Pipeline

### Pipeline Flow

GitHub (dev branch)
→ Jenkins Pipeline
→ Docker Build
→ DockerHub Push (dev)
→ Deploy to AWS 

## AWS Setup

### EC2 Details
- Instance Type: t2.micro
- OS: Amazon Linux 2023

### Security Group Rules

| Port | Purpose | Access |
|------|---------|--------|
| 22   | SSH | My IP |
| 80   | Application | Anywhere |
| 8080 | Jenkins | Anywhere |
| 3001 | Monitoring | Anywhere |

---

## Monitoring

Monitoring Tool: **Uptime Kuma**

Monitor URL:
http://EC2_PUBLIC_IP

Status:
UP (Green)
