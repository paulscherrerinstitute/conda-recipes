# Overview

Pyepics (https://github.com/pyepics/) package including proper dependencies (i.e. to epics base)


# Usage

Simple example for accessing channels from a Channel Access gateway:

```python
# Set appropriate environment variables
import os
os.environ['EPICS_CA_ADDR_LIST'] = 'sls-cagw'
os.environ['EPICS_CA_SERVER_PORT'] = '5062'

# Access Channel Access channels
import epics
epics.caget('ARIDI-PCT:CURRENT')
```
