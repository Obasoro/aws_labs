#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Step 1: Downloading kubectl binary"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

echo "Step 2: Downloading kubectl checksum"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"

echo "Step 3: Verifying kubectl binary"
echo "$(cat kubectl.sha256) kubectl" | sha256sum --check

echo "Step 4: Making kubectl executable and moving to ~/.local/bin"
chmod +x kubectl
mkdir -p ~/.local/bin
mv ./kubectl ~/.local/bin/kubectl
echo "NOTE: Make sure to add ~/.local/bin to your \$PATH if it's not already there"

echo "Step 5: Setting up Kubernetes yum repository"
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://pkgs.k8s.io/core:/stable:/v1.26/rpm/
enabled=1
gpgcheck=1
gpgkey=https://pkgs.k8s.io/core:/stable:/v1.26/rpm/repodata/repomd.xml.key
EOF

echo "Step 6: Installing kubectl via yum"
sudo yum install -y kubectl

echo "Step 7: Installing kubelet and kubeadm"
sudo yum install -y kubelet kubeadm

echo "Step 8: Checking Kubernetes configuration directory"
ls /etc/kubernetes/ || echo "Directory not found, will be created during kubeadm init"

echo "Step 9: Initializing Kubernetes cluster with kubeadm"
sudo kubeadm init --pod-network-cidr=192.168.0.0/16

echo "Kubernetes installation complete!"
echo "To start using your cluster, run the following commands as a regular user:"
echo "  mkdir -p \$HOME/.kube"
echo "  sudo cp -i /etc/kubernetes/admin.conf \$HOME/.kube/config"
echo "  sudo chown \$(id -u):\$(id -g) \$HOME/.kube/config"