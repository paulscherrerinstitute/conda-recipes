#!/usr/bin/env bash
docker exec psi_conda bash -c "cd /tmp/recipes;if [ ! -z "${CONDA_PY}" ]; then export CONDA_PY=${CONDA_PY}; fi;source /opt/conda/etc/profile.d/conda.sh;source /opt/docker/bin/entrypoint_source;conda $*"
