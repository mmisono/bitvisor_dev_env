#!/bin/bash -eu

pushd docker
docker build -t bitvisor_build:latest .
popd

docker run --rm -v `pwd`:/share -it bitvisor_build:latest /work/build_ipxe.sh
