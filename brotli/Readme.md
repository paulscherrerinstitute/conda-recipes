# Overview
To build the conda package use

```
conda build brotli/
```

# Example

There is an IPython notebook - [Examples.ipynb] - holding these examples. 


## Simple Example
```Python
import brotli
test_string='THIS IS A REALLY COOL STRING'

# Compress
compressed_string = brotli.compress(test_string)
print(compressed_string)

# Decompress
decompressed_string = brotli.decompress(compressed_string)
print(decompressed_string)
```

## Compressing HDF5 Dataset(Image)

```Python
import h5py
f = h5py.File('/Users/ebner/32bit_1679x1475_insulin_ff.hdf5','r')
dataset = f['entry']['data']['dataset'].value

import brotli
compressed_data = brotli.compress(dataset[0].tobytes())
print(len(compressed_data))
```
