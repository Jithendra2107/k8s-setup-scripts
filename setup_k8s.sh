#!/bin/bash
set -e  # Exit immediately if a command fails

echo "🔹 Updating package list..."
sudo apt update

echo "🔹 Installing Docker..."
sudo apt install -y docker.io
sudo usermod -aG docker $USER

echo "✅ Docker installed successfully."

echo "🔹 Installing kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl

echo "✅ kubectl installed successfully."

echo "🔹 Installing Minikube..."
curl -LO https://github.com/kubernetes/minikube/releases/latest/download/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
rm minikube-linux-amd64

echo "✅ Minikube installed successfully."

echo "⚠️ IMPORTANT: You must run 'newgrp docker' or log out and back in before starting Minikube."
echo "👉 After that, start Minikube with:"
echo "    minikube start --driver=docker --memory=2048 --cpus=2 --disk-size=4g"

echo "🎉 Setup complete! Docker, kubectl, and Minikube are installed with strict resource limits."

