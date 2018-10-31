# Creating tensors


**References:**
-


- `tf.zeros()`
- `tf.zeros_like()`
- `tf.ones()`
- `tf.ones_like()`


## `tf.zeros()`

- https://www.tensorflow.org/api_docs/python/tf/zeros

Creates a tensor with all elements set to zero.

~~~~
tf.zeros(
    shape,
    dtype=tf.float32,
    name=None
)
~~~~

## `tf.zeros_like()`

- https://www.tensorflow.org/api_docs/python/tf/zeros_like

Creates a tensor with all elements set to zero.

Given a single tensor (tensor), this operation returns a tensor of the same
type and shape as tensor with all elements set to zero. Optionally, you can use
dtype to specify a new type for the returned tensor.

~~~~
tf.zeros_like(
    tensor,
    dtype=None,
    name=None,
    optimize=True
)
~~~~


## `tf.ones()`

- https://www.tensorflow.org/api_docs/python/tf/ones

Creates a tensor with all elements set to 1.

~~~~
tf.ones(
    shape,
    dtype=tf.float32,
    name=None
)
~~~~


## `tf.ones_like()`

- https://www.tensorflow.org/api_docs/python/tf/ones_like

Creates a tensor with all elements set to 1.

~~~~
tf.ones_like(
    tensor,
    dtype=None,
    name=None,
    optimize=True
)
~~~~
