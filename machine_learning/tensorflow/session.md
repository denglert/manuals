# Sessions in `tensorflow()`

- https://www.tensorflow.org/api_docs/python/tf/Session
- https://www.tensorflow.org/guide/graphs#executing_a_graph_in_a_tfsession



## `tf.Session()`

A class for running TensorFlow operations.

A `Session` object encapsulates the environment in which `Operation` objects are executed, and
`Tensor` objects are evaluated. For example:


~~~~
# Build a graph.
a = tf.constant(5.0)
b = tf.constant(6.0)
c = a * b

# Launch the graph in a session.
sess = tf.Session()

# Evaluate the tensor `c`.
print(sess.run(c))
~~~~

A session may own resources, such as `tf.Variable`, `tf.QueueBase`, and `tf.ReaderBase`. It is
important to release these resources when they are no longer required. To do this, either invoke the
`tf.Session.close` method on the session, or use the session as a context manager. The following two
examples are equivalent:


~~~~
sess = tf.Session()
sess.run()
sess.close()
~~~~

Using the context manager:

~~~~
with tf.Session() as sess:
    sess.run()
~~~~
