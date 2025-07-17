#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Install necessary tools
sudo dnf -y install dnf-plugins-core

# Add Docker's official repository
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo

# Install Docker Engine and related plugins
sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add current user to docker group (use $USER instead of hardcoded 'ec2-user')
sudo usermod -aG docker "$USER"

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Optional: Check Docker status
sudo systemctl status docker
