#!/bin/bash
sudo docker swarm init --advertise-addr=10.10.10.100
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh
docker volume create teste
docker run -dti --mount type=volume,src=teste,dst=teste debian
docker volume rm teste