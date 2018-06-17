# `warnings` module manual


**All references:**
- https://docs.python.org/3.6/library/warnings.html
- https://stackoverflow.com/questions/16236644/userwarning-converting-a-masked-element-to-nan


## Warn

~~~~
warnings.warn(message)
~~~~

## Filter `warnings`:

~~~~
warnings.filterwarnings('ignore')
~~~~

Upgrade a warning to an error:

~~~~
warnings.simplefilter('error', UserWarning)
~~~~
