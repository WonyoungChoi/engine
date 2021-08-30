#!/bin/bash

IMAGE_NAME=ghcr.io/flutter-tizen/build-engine
IMAGE_TAG=latest
GIT_BRANCH=flutter-2.2.1-tizen

docker pull $IMAGE_NAME:$IMAGE_TAG
docker build --build-arg GIT_BRANCH=$GIT_BRANCH --tag $IMAGE_NAME:$IMAGE_TAG .
