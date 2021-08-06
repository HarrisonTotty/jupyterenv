#!/usr/bin/env bash
# Runs the docker file!
set -e
trap 'exit 100' INT

docker build -t jupyterenv:latest "${HOME}/projects/jupyterenv"

docker run \
    --rm \
    -p 8888:8888 \
    -e JUPYTER_ENABLE_LAB=yes \
    -v "$PWD":/home/jovyan/work \
    $@ \
    jupyterenv:latest start.sh jupyter lab --LabApp.token=''
