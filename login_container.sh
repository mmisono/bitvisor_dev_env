#!/bin/bash -eu

pushd docker
docker build -t bitvisor_build:latest .
popd

docker run --rm --entrypoint '' -v `pwd`:/share -it bitvisor_build:latest /bin/bash
