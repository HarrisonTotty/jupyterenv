#!/usr/bin/env bash
# Runs the docker file!
set -e

docker run \
    --rm \
    -p 8501:8501 \
    -p 8888:8888 \
    -e JUPYTER_ENABLE_LAB=yes \
    -v "$PWD":/home/jovyan/work \
    $@ \
    jupyterenv:latest start.sh jupyter lab --LabApp.token=''
