#!/bin/bash

# allow jenkins to fire up ephemeral containers
sudo useradd jenkins
sudo usermod -aG docker jenkins


docker build \
    -t jenkins:local \
    -f Dockerfile-Jenkins \
    .
