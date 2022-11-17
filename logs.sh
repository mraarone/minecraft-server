#!/bin/bash
# Using alias.sh
# dcm logs vanilla
#echo $1;

if [ $# == 0 ]; then
    echo "To specify a Minecraft Container, type \"dcm logs <server-name>\" where server-name is one of the following:"
    docker-compose -f minecraft.yml ps --services
elif [ $# == 1 ]; then
    docker-compose -f minecraft.yml logs -f $1
fi

