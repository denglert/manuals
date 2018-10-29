# Computational Graphs in `tensorflow`

**References:**
- https://www.tensorflow.org/api_docs/python/tf/Graph
- https://www.tensorflow.org/guide/graphs




------------------------------------------------------------


## Functions


### `tf.reset_default_graph()`

- https://www.tensorflow.org/versions/r1.0/api_docs/python/tf/reset_default_graph

Clears the default graph stack and resets the global default graph.

~~~~
tf.reset_default_graph()
~~~~

### `tf.get_default_graph()`

- https://www.tensorflow.org/api_docs/python/tf/get_default_graph

Returns the default graph for the current thread.



### `tf.Graph()`

- https://www.tensorflow.org/api_docs/python/tf/Graph

A TensorFlow computation, represented as a dataflow graph.

A `Graph` contains a set of `tf.Operation` objects, which represent units of computation; and `tf.Tensor`
objects, which represent the units of data that flow between operations.

A default `Graph` is always registered, and accessible by calling `tf.get_default_graph`. To add an
operation to the default graph, simply call one of the functions that defines a new `Operation`:

~~~~
c = tf.constant(4.0)
assert c.graph is tf.get_default_graph()
~~~~



~~~~
with graph.as_default():
    x2 = tf.Variable(2)

print(x2.graph is graph)
print(x2.graph is tf.get_default_graph())
~~~~
