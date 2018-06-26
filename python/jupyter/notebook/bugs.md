# Bugs in jupyter notebook

## `AttributeError: type object 'IOLoop' has no attribute 'initialized'`

- https://github.com/jupyter/notebook/issues/3407

**Solution:**

Downgrade tornado to 4.5.3:

~~~~
conda install tornado=4.5.3
~~~~

