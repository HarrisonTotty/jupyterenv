#!/usr/bin/env bash
# Builds the docker image!
set -e

docker build -t jupyterenv:latest .
