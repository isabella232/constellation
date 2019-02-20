#!/usr/bin/env bash
# common-docker.sh

# Only use TTY for Docker if we detect one, otherwise
# this will balk when run in Jenkins
# Thanks https://stackoverflow.com/a/48230089
declare USE_TTY
test -t 1 && USE_TTY="-t" || USE_TTY=""

declare INPUT_ENABLED
test -t 1 && INPUT_ENABLED="true" || INPUT_ENABLED="false"

export INPUT_ENABLED USE_TTY

export IS_DEPLOYABLE="true"
export HAS_PORT="true"

export APPLICATION_NAME=webapp
export IMAGE_NAME=k8s-dev-webapp
export IMAGE_VERSION=1.0.3
export REPOSITORY_BASE="976851222302.dkr.ecr.us-west-2.amazonaws.com/k8s-eks-scaling-demo-repo"
export CONTAINER_PORT="80"
export HOST_PORT=8081
