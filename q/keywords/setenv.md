# `setenv`

**References:**
- https://code.kx.com/q/ref/getenv/#setenv

Set the value of an environment variable

-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

## Syntax

~~~~
x setenv y
~~~~

or


~~~~
setenv[x; y]
~~~~


where
- `x` is a symbol atom naming an environment variable
- `y` is a string

sets the environment variable named by `x`.


-------------------------------------------------------------------------------------------------------

### Examples

~~~~
`RTMP setenv "/home/user/temp"
~~~~
