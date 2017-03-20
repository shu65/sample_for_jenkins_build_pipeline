#!/bin/sh

export IMAGE_NAME="sample_for_jenkins_build_pipeline"
export IMAGE_TAG=`git show --pretty=format:'%ad-%H' --date=short | head -n 1`
export IMAGE=${IMAGE_NAME}:${IMAGE_TAG}
