#!/bin/sh

echo '[INFO] Cleanup apt cache: apt-get clean' && \
    apt-get clean -y 

echo '[INFO] Cleanup apt cache: apt-get autoclean' && \
    apt-get autoclean -y

echo '[INFO] Cleanup apt cache: apt-get autoremove' && \
    apt-get autoremove -y 
