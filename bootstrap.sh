#! /usr/bin/env bash

yum update -y
cp /vagrant/docker.repo /etc/yum.repos.d/docker.repo 
yum install -y docker-engine
systemctl enable docker
systemctl start docker
usermod -aG docker vagrant
