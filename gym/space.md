# `Space` class in `gym`


**Member functions:**
- `sample()`: uniform random sample from the space
- `contains(x)`: returns boolen specifyin if `x` is a valid member of the space



**Space types:**
- `Discrete`: discrete sample space. Elements are 0, 1, ..., n-1.
- `Box`: A box in R^n. Each coordinate is bounded.



## `Discrete`

**Member variables:**
- `n`: number of elements



## `Box`

**Member variables:**
- `shape`
- `low`: lower boundary of the continuous space
- `high`: higher boundary of the continuous space

