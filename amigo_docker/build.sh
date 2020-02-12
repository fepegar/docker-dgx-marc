#!/usr/bin/env bash
docker build . -f Dockerfile\
 -t fperez:MICCAI20 \
 --build-arg USER_NAME=fperez \
 --build-arg USER_ID=1003 \
