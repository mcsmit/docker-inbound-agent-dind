#!/bin/bash

FILE=/config/config.json
if test -f "$FILE"; then
    ln -s /config/config.json /root/.docker/config.json
fi

dockerd-entrypoint.sh dockerd --experimental &

jenkins-agent "$@"

killall dockerd
