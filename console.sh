#!/bin/bash
# Using alias.sh
# dcm exec vanilla /bin/bash

if [ $# == 0 ]; then
    echo "To specify a Minecraft Container, type \"./console.sh <server-name>\" where server-name is one of the following:"
    docker-compose -f minecraft.yml ps --services
elif [ $# == 1 ]; then
    docker-compose -f minecraft.yml exec $1 /bin/bash
fi
