# 🚀 Kubernetes Setup Scripts

This repository contains shell scripts to quickly install and configure **Docker**, **kubectl**, and **Minikube** on Ubuntu systems.  
It is designed for students, developers, and engineers who want a fast way to set up a local Kubernetes environment — either on their laptop or on cloud VMs (e.g., AWS EC2 Ubuntu).

---

## 📋 Prerequisites
- Ubuntu 20.04+ (tested on AWS EC2 Ubuntu VM)
- At least **2 CPUs**, **2 GB RAM**, and **4–6 GB disk space** allocated for Minikube
- Internet access to download binaries
- User account with `sudo` privileges

---

## 🛠️ Installation

Clone the repository:

`git clone https://github.com/Jithendra2107/k8s-setup-scripts.git`

`cd k8s-setup-scripts`

---

## ⚠️ Important Steps Before Starting Minikube
Refresh Docker group membership  
The script adds your user to the docker group.

### log out and back in.
-Without this, Minikube will fail with permission denied on /var/run/docker.sock.

### Verify installations

Docker: `docker --version`

kubectl: `kubectl version --client`

Minikube: `minikube version`

### Start Minikube with resource limits  
-Always specify memory, CPU, and disk size to avoid exhausting VM resources:

`minikube start --driver=docker --memory=2048 --cpus=2 --disk-size=4g`
