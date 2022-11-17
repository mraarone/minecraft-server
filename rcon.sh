#!/bin/bash
# Using alias.sh
# dcm exec mc rcon-cli

if [ $# == 0 ]; then
    echo "To specify a Minecraft Container, type \"./rcon.sh <server-name>\" where server-name is one of the following:"
    docker-compose -f minecraft.yml ps --services
elif [ $# == 1 ]; then
    docker-compose -f minecraft.yml exec $1 rcon-cli
fi

