# Unsorted manual on `tensorflow`

**References:**


## Basic

### Import

~~~~
import tensorflow as tf
~~~~


### Initialization


#### `tf.reset_default_graph()`

- https://www.tensorflow.org/versions/r1.0/api_docs/python/tf/reset_default_graph

Clears the default graph stack and resets the global default graph.

~~~~
tf.reset_default_graph()
~~~~



#### `tf.set_random_seed(seed)`

- https://www.tensorflow.org/api_docs/python/tf/set_random_seed

Sets the graph-level random seed.

Operations that rely on a random seed actually derive it from two seeds: the graph-level and
operation-level seeds. This sets the graph-level seed.

Its interactions with operation-level seeds is as follows:

~~~~
tf.set_random_seed(seed)
~~~~



#### `tf.get_default_graph()`

- https://www.tensorflow.org/api_docs/python/tf/get_default_graph

Returns the default graph for the current thread.

-------------------------------------------

-------------------------------------------

## Variables


- https://www.tensorflow.org/guide/variables


### `tf.Variable()`

- https://www.tensorflow.org/api_docs/python/tf/Variable

Variables are manipulated via the `tf.Variable` class. A `tf.Variable` represents a
tensor whose value can be changed by running ops on it. Unlike `tf.Tensor`
objects, a `tf.Variable` exists outside the context of a single `session.run` call

~~~~
x = tf.Variable(1, name="x")
~~~~


~~~~
x.graph()
~~~~


### `tf.constant()`

- https://www.tensorflow.org/api_docs/python/tf/constant

