#!/bin/bash



dockerd-entrypoint.sh dockerd &

jenkins-agent "$@"

killall dockerd