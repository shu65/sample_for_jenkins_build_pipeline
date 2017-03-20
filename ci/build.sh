#!/bin/sh

cd ../
docker build -t ${IMAGE} -f ./docker/Dockerfile .
