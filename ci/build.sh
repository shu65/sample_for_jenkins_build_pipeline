#!/bin/sh


if [ ! -n "${IMAGE+1}" ]
then
    echo "Error: you should run '. set_env.sh'."
    exit 1
fi

cd ../
docker build -t ${IMAGE} -f ./docker/Dockerfile .
