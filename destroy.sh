#!/bin/sh

docker-compose -f minecraft.yml down
docker image rm modserver

