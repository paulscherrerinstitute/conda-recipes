#!/usr/bin/env bash
docker exec psi_conda bash -c "source /opt/docker/bin/entrypoint_source;cd /tmp/recipes;if [ ! -z "${CONDA_PY}" ]; then export CONDA_PY=${CONDA_PY}; fi;conda $*"
