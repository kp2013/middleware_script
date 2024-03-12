#!/bin/bash

# Update the package index
yum update -y

# Install required dependencies
yum install -y yum-utils device-mapper-persistent-data lvm2

# Add Docker repository
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker
yum install -y docker-ce docker-ce-cli containerd.io

# Start and enable Docker service
systemctl start docker
systemctl enable docker

# Verify Docker installation
docker --version

# Add current user to the docker group to run docker commands without sudo
usermod -aG docker $USER

echo "Docker installed successfully. Please log out and log back in to apply user group changes."
