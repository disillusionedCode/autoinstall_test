#!/usr/bin/env bash

sudo yum -y install wget
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo dnf -y upgrade

# Add required dependencies for the jenkins package
sudo dnf install -y java-11-openjdk
sudo dnf install -y jenkins
sudo systemctl -y daemon-reload

sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
