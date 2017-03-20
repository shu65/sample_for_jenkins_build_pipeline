#!/bin/sh


if [ ! -n "${IMAGE+1}" ]
then
    echo "Error: you should run '. set_env.sh'."
    exit 1
fi

LOCAL_REGISTRY_TAG="local_registry:5000/${IMAGE}"

cd ../
docker build -t ${IMAGE} -f ./docker/Dockerfile .
docker tag ${IMAGE} ${LOCAL_REGISTRY_TAG}
docker push ${LOCAL_REGISTRY_TAG}

