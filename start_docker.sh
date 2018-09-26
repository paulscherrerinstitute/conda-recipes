#!/usr/bin/env bash
docker run -dt --name "psi_conda" -e HOST_USER_ID=`id -u` -e HOST_GROUP_ID=`id -g` -v `pwd`:/tmp/recipes -v ${1}:/opt/conda/conda-bld condaforge/linux-anvil:latest
