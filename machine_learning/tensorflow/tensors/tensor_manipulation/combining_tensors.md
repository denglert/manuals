# Combining tensors in `tensorflow`


**References:**
- 


## `tf.concat`

Concatenates tensors along one dimension.

~~~~
tf.concat(
    values,
    axis,
    name='concat'
)
~~~~



Concatenates the list of tensors values along dimension axis. If `values[i].shape = [D0, D1, ...
Daxis(i), ...Dn]`, the concatenated result has shape

~~~~
[D0, D1, ... Raxis, ...Dn]
~~~~

where

~~~~
Raxis = sum(Daxis(i))
~~~~

## `tf.stack`
