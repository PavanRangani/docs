#!/bin/bash

# Usage: build.sh -d {appDir} -i {imageName} [-t {tag}]

yarn install || exit 1
yarn docs:build

echo "creating docker image"

APP_DIR=
IMAGE_NAME=
REPO_TAG=latest

while [[ $# -gt 1 ]]
do
  key=$1

  case $key in
    -d)
      APP_DIR=$2
      shift # past argument
      ;;
    -i)
      IMAGE_NAME=$2
      shift # past argument
      ;;
    -t)
      REPO_TAG=$2
      shift # past argument
      ;;
    *)
      # unknown option
      ;;
  esac

  shift # past argument or value
done

if [ -z $APP_DIR ] || [ -z $IMAGE_NAME ]
then
  usage
  exit 1
fi

if [[ $APP_DIR != /* ]]
then
  echo "Project path should be absolute."
  exit 1
fi

if [ ! -d $APP_DIR ]
then
  echo "Directory '$APP_DIR' doesn't exists."
  exit 1
fi

docker build -f $APP_DIR/docker-build/Dockerfile -t $IMAGE_NAME:$REPO_TAG $APP_DIR/
