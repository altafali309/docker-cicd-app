# 🚀 Docker CI/CD Deployment on AWS

This project demonstrates a complete CI/CD pipeline where a Dockerized web application is automatically deployed to an AWS EC2 instance using GitHub Actions.

Whenever code is pushed to the repository, the pipeline builds and deploys the updated application without any manual intervention.

---

## 🧠 Project Overview

The goal of this project was to understand how real-world deployment pipelines work, including containerization, automation, and remote deployment.

---

## 🏗️ Architecture

```text
Developer → GitHub → GitHub Actions → SSH → AWS EC2 → Docker → Live Application
```

---

## ⚙️ Tech Stack

* Linux (WSL + EC2)
* Docker
* GitHub Actions (CI/CD)
* AWS EC2
* Nginx

---

## 🔄 CI/CD Workflow

1. Code is pushed to GitHub
2. GitHub Actions triggers the workflow
3. Workflow connects to EC2 using SSH
4. Existing container is stopped and removed
5. New Docker image is built
6. Updated container is deployed

---

## 🐳 Docker Setup

### Dockerfile

* Base Image: Nginx
* Application files copied into container
* Health check added for reliability

---

## 🚀 Deployment

Application is deployed automatically on EC2 using GitHub Actions and SSH.

---

## 🌍 Live Application

👉 http://YOUR_EC2_IP:5000

---

## 🔐 GitHub Secrets Used

* EC2_HOST → Public IP of EC2
* EC2_USER → SSH user (ubuntu)
* EC2_KEY → Private key

---

## 💥 Challenges Faced

* GitHub authentication issues during push
* CI/CD workflow not triggering due to incorrect setup
* SSH configuration and access issues
* Port conflicts (port 80 already in use)
* Container not starting due to incorrect configuration

---

## 🧠 Key Learnings

* Understanding CI/CD pipeline automation
* Docker container lifecycle (build, run, stop, remove)
* Difference between local and production environments
* Debugging real-world deployment issues
* Importance of correct port mapping and configuration

---

## 🔥 Improvements Implemented

* Added Docker health checks to ensure container reliability
* Automated deployment using GitHub Actions
* Structured project for scalability and clarity

---

## 🚀 Future Improvements

* Add domain name and HTTPS (SSL)
* Implement monitoring (Prometheus + Grafana)
* Use Docker Compose for multi-container setup

---

This project helped me move beyond basic setups and understand how deployment and automation work in real environments.
