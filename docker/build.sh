#!/bin/sh

IMAGE_NAME="shu65/ghostz"
IMAGE_TAG=`git show --pretty=format:'%ad-%H' --date 'format:%Y%m%dT%H%M%S' | head -n 1`
IMAGE=${IMAGE_NAME}:${IMAGE_TAG}

cd ../
docker build -t ${IMAGE} -f ./docker/Dockerfile .
