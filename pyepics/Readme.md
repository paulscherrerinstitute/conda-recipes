# Overview
pyepics can be easily used to access Channel Access channels from Python.

```python
# Set appropriate environment variables
import os
os.environ['EPICS_CA_ADDR_LIST'] = 'sls-cagw'
os.environ['EPICS_CA_SERVER_PORT'] = '5062'

# Access Channel Access channels
import epics
epics.caget('ARIDI-PCT:CURRENT')
```
