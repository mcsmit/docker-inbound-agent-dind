#!/bin/bash

dockerd-entrypoint.sh dockerd &

set -- jenkins-agent "$@"
