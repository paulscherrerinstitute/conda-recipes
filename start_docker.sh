#!/usr/bin/env bash
docker run -dt --name "psi_conda" -e 'PATH=/opt/miniconda/bin:/usr/bin/:/bin:/usr/sbin:/sbin' -v `pwd`:/tmp/recipes -v ${1}:/opt/miniconda/conda-bld continuumio/anaconda-build-linux-64:latest bash
docker exec psi_conda sudo bash -c "rm /etc/yum.repos.d/*.repo"
docker exec psi_conda bash -c 'echo "[base]" | sudo tee -a /etc/yum.conf'
docker exec psi_conda bash -c 'echo "name=Centos-5.11 - Base" | sudo tee -a /etc/yum.conf'
docker exec psi_conda bash -c 'echo "baseurl=http://vault.centos.org/5.11/os/\$basearch/" | sudo tee -a /etc/yum.conf'
docker exec psi_conda sudo yum install -y gcc gcc-c++
