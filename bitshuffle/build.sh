export CONDA_HOME=$PREFIX

# Make sure package is not compiled with OpenMP
cat > setup.cfg << EOF
[build_ext]
omp = 0
EOF
$PYTHON setup.py install     # Python command to install the script
