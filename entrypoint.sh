#!/bin/bash



dockerd-entrypoint.sh dockerd --experimental &

jenkins-agent "$@"

killall dockerd
