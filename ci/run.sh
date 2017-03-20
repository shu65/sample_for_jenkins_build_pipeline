#!bin/sh

if [ ! -n "${IMAGE+1}" ]
then
    echo "Error: you should run '. set_env.sh'."
    exit 1
fi

docker run --rm -it ${IMAGE} /sample_for_jenkins_build_pipeline/hello_world

