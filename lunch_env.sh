#!/bin/bash

#echo "Enable forwarding"
#sysctl net.ipv4.conf.all.forwarding=1
#sudo iptables -P FORWARD ACCEPT

#echo "Launch containers"
docker="sudo docker-compose -f vendor/bbb/development/docker/docker-compose.yaml"
${docker} run -d nfs && \
${docker} run -d tftp && \
${docker} run "$@" --rm bbb-devel
${docker} down
