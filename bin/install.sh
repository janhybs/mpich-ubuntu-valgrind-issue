#!/bin/bash

# get absolute dir in which is this script stored
CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$CWD"

docker build --tag base    ../base
docker build --tag openmpi ../openmpi
docker build --tag mpich   ../mpich
