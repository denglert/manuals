# Loops in Matlab

- https://uk.mathworks.com/help/matlab/matlab_prog/loop-control-statements.html

## `for` loop

- https://uk.mathworks.com/help/matlab/ref/for.html

~~~~
s = 10;
H = zeros(s);

for c = 1:s
    for r = 1:s
        H(r,c) = 1/(r+c-1);
    end
end
~~~~

## `while` loop

~~~~
n = 1;
nFactorial = 1;
while nFactorial < 1e100
    n = n + 1;
    nFactorial = nFactorial * n;
end
~~~~

