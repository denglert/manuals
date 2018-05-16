# Matlab functions


Example:

~~~~
function [s] = sigmoid(z)

s = 1.0/(1.0 + exp(-z));

end
~~~~

## Anonymous functions

- https://uk.mathworks.com/help/matlab/matlab_prog/anonymous-functions.html


> An anonymous function is a function that is not stored in a program file, but is associated with a
> variable whose data type is function_handle. Anonymous functions can accept inputs and return
> outputs, just as standard functions do. However, they can contain only a single executable
> statement.

~~~~
sqr = @(x) x.^2;
~~~~
