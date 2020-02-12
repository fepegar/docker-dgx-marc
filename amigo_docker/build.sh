#!/usr/bin/env bash
docker build . -f Dockerfile\
 -t reubend:MICCAI20 \
 --build-arg USER_NAME=rdorent \
 --build-arg USER_ID=1002 \
