#!/bin/bash
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/Applications/Wireshark.app/Contents/MacOS
docker container rm -f $1
docker pull andres2508/docker-helloworld:latest
docker run -dit --name $1 -p $2:3535 andres2508/docker-helloworld:latest
