#!/usr/bin/env bash
docker run -dt --name "psi_conda" -e 'PATH=/opt/miniconda/bin:/usr/bin/:/bin:/usr/sbin:/sbin' -v `pwd`:/tmp/recipes -v ${1}:/opt/miniconda/conda-bld continuumio/anaconda-build-linux-64:latest bash
docker exec psi_conda sudo yum install -y gcc gcc-c++
