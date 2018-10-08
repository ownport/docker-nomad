#!/bin/sh

set -e

NOMAD_VERSION="0.8.6"

echo '[INFO] Starting Nomad installation' && \
    mkdir -p /tmp/nomad && \
    curl -kL -o /tmp/nomad/nomad_${NOMAD_VERSION}_linux_amd64.zip \
        https://releases.hashicorp.com/nomad/${NOMAD_VERSION}/nomad_${NOMAD_VERSION}_linux_amd64.zip && \
    unzip -d /bin /tmp/nomad/nomad_${NOMAD_VERSION}_linux_amd64.zip && \
    chmod +x /bin/nomad && \
    rm -rf /tmp/nomad && \
    echo "[INFO] Completed Nomad installation"

echo '[INFO] Creation nomad user' && \
    adduser \
        --no-create-home \
        --disabled-password \
        --disabled-login \
        --gecos "" \
        nomad 

echo  '[INFO] Creation Nomad environment' && \
    mkdir -p /nomad/data && \
    mkdir -p /etc/nomad && \
    chown -R nomad:nomad /nomad && \
    echo "[INFO] Completed Nomad installation"
