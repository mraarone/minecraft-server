#!/bin/sh

# Using alias.sh
# dcm exec backup /bin/bash

# Follow https://serialized.net/2021/02/minecraft_server_docker/
# bash-5.0# restic snapshots
# bash-5.0# restic restore e95fbf5f --include /data/vanilla/world --target /recover/testrestore

docker-compose -f minecraft.yml exec backups /bin/bash

