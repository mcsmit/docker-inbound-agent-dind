#!/usr/bin/env sh

FILE=/config/config.json
if test -f "$FILE"; then
    ln -s /config/config.json /root/.docker/config.json
fi

dockerd-entrypoint.sh --experimental &

jenkins-agent "$@"

killall dockerd
