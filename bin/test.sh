#!/bin/bash

# get absolute dir in which is this script stored
CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$CWD/../test"


# first test openmpi implementation
echo "========================================================================"
echo "=========================================== TESTING OPENMPI ============"
echo "========================================================================"
docker run -ti --rm -v "/$HOME:/$HOME" -w "/$(pwd)" openmpi make run

echo -e "\n\n\n\n"


# then we try mpich implementation
echo "========================================================================"
echo "=========================================== TESTING MPICH =============="
echo "========================================================================"
docker run -ti --rm -v "/$HOME:/$HOME" -w "/$(pwd)" mpich make run
