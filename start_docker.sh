#!/usr/bin/env bash
docker run -dt --name "psi_conda" -v `pwd`:/tmp/recipes -v ${1}:/opt/conda/conda-bld condaforge/linux-anvil:latest
docker exec psi_conda sudo yum install -y perl
