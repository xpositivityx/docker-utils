#!/bin/bash

# allow jenkins to fire up ephemeral containers
sudo useradd jenkins
sudo usermod -aG docker jenkins

mkdir /var/jenkins_home
chmod -R 777 /var/jenkins_home

docker build \
    -t jenkins:local \
    -f Dockerfile-Jenkins \
    .
