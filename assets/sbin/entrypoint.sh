#!/usr/bin/env bash

set -eu

NOMAD_DATA_DIR=${NOMAD_DATA_DIR:-"/nomad/data"}
NOMAD_CONFIG_DIR=${NOMAD_CONFIG_DIR:-"/etc/nomad"}

case ${1} in
    server)
        echo "[INFO] Starting Nomad server"
        ;;
    client)
        echo '[INFO] Starting Nomad client'
        ;;
    version)
        nomad version
        ;;
    help)
        echo 'Available options:'
        echo ' help         - Displays the help'
        echo ' [command]    - Execute the specified command, eg. bash.'
        ;;
    *)
        if [ ! "$@" ]; then
            echo "[WARNING] No entrypoint specified" 
        else
            exec "$@"
        fi
        ;;
esac 
