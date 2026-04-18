# 🚀 Docker CI/CD Project (AWS Deployment)

So basically, in this project I built a simple website and deployed it using Docker and AWS, but the main focus was learning how CI/CD actually works in real life.

Whenever I push code to GitHub, it automatically builds and deploys the app on my AWS EC2 instance. No manual work.

---

## 🧠 What this project does

Flow is something like this:

```text
My code → GitHub → GitHub Actions → EC2 → Docker → Live Website
```

So whenever I update my code:

* GitHub runs a workflow
* Builds Docker image
* Connects to my EC2 server using SSH
* Stops old container
* Runs new container

And boom, updated website is live.

---

## 🛠️ Tech used

* Linux (WSL + EC2)
* Docker
* GitHub Actions (CI/CD)
* AWS EC2
* Nginx

---

## 🐳 Docker part

I used a simple Dockerfile:

* Base image → nginx
* Copied my website files into nginx directory

Commands I used:

```bash
docker build -t cicd-app .
docker run -d -p 5000:80 --name cicd-container cicd-app
```

---

## ⚙️ CI/CD part

I created a GitHub workflow using YAML file.

Whenever I push code:

* It runs automatically
* Connects to EC2 using SSH
* Pulls latest code
* Rebuilds container

This is basically CI + CD combined.

---

## 🔐 Secrets used

Added in GitHub:

* EC2_HOST → my server IP
* EC2_USER → ubuntu
* EC2_KEY → private key

---

## 🌍 Live

App is running here:

http://YOUR_EC2_IP:5000

---

## 💥 Problems I faced (real ones)

* GitHub login/token issue (push failed 😭)
* Forgot to push updated workflow (big brain moment 💀)
* SSH setup confusion
* 502 Bad Gateway error
* Port conflict (fixed by switching to 5000)

---

## 🧠 What I learned

* How Docker actually works
* What CI/CD really means (not just theory)
* How GitHub Actions works internally
* How to deploy apps on AWS
* How to debug real issues instead of copy-paste

---

## 🚀 Next plan

* Add domain + HTTPS
* Try Docker Compose
* Add monitoring (Prometheus/Grafana)
* Improve UI (this one is ugly rn 😂)

---

This is my first proper DevOps project where I actually understood what’s happening instead of just following steps.
