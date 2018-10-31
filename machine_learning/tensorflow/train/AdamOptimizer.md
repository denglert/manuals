# `tf.train.AdamOptimizer`

**References:**
- https://www.tensorflow.org/api_docs/python/tf/train/AdamOptimizer
- http://arxiv.org/abs/1412.6980


Construct a new Adam optimizer.

~~~~
__init__(
    learning_rate=0.001,
    beta1=0.9,
    beta2=0.999,
    epsilon=1e-08,
    use_locking=False,
    name='Adam'
)
~~~~



**Args:**

- `learning_rate`: A Tensor or a floating point value. The learning rate.
- `beta1`: A float value or a constant float tensor. The exponential decay rate for the 1st moment
    estimates.
- `beta2`: A float value or a constant float tensor. The exponential decay rate for the 2nd moment
estimates.
- `epsilon`: A small constant for numerical stability. This epsilon is "epsilon hat" in the Kingma
and Ba paper (in the formula just before Section 2.1), not the epsilon in Algorithm 1 of the paper.
- `use_locking`: If True use locks for update operations.
- `name`: Optional name for the operations created when applying gradients. Defaults to "Adam".

Initialization



## Methods

- `apply_gradients(grads_and_vars, global_step=None, name=None)`
- `compute_gradients(loss, var_list=None, gate_gradients=GATE_OP, aggregation_method=None, colocate_gradients_with_ops=False, grad_loss=None)`
- `minimize(loss, global_step=None, var_list=None, gate_gradients=GATE_OP, aggregation_method=None, colocate_gradients_with_ops=False, name=None, grad_loss=None)`
- `variables()`


### `minimize()`

Add operations to minimize loss by updating `var_list`.

~~~~
minimize(
    loss,
    global_step=None,
    var_list=None,
    gate_gradients=GATE_OP,
    aggregation_method=None,
    colocate_gradients_with_ops=False,
    name=None,
    grad_loss=None
)
~~~~


This method simply combines calls `compute_gradients()` and `apply_gradients()`. If you want to
process the gradient before applying them call `compute_gradients()` and `apply_gradients()`
explicitly instead of using this function.
