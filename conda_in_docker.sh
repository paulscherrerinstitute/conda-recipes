#!/usr/bin/env bash
docker exec psi_conda bash -c "cd /tmp/recipes;if [ ! -z "${CONDA_PY}" ]; then export CONDA_PY=${CONDA_PY}; fi;/opt/conda/bin/conda $*"
