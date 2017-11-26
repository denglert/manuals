# Basic shell

## Terminal prompt

Search in bash
~~~~
CTRL+R
~~~~

## Variables

**Assignment:**

~~~~
a="hello"
~~~~

**Return value of a variable:**

~~~~
${a}
~~~~

**Replace string in the value of variable:**

~~~~
${var//old/new}
~~~~

**String concatenatation:**

~~~~
concatenated=${string1}${string2}
~~~~


## Shell special variables

- `$0`: the filename of the current script
- `$#`: the number of arguments supplied to a script
- `$*`: all the arguments are double quoted. If a script receives two arguments, $* is equivalent to
  $1 $2
- `$$`: the process number of the current shell. For shell scripts, this is the process ID under
  which they are executing.
- `$!`: the process number of the last background command

## Conditional

~~~~
NUM1=3
NUM2=5

if [ $NUM1 -eq $NUM2 ]
then
	echo "True."
else
	echo "False."
fi
~~~~

## Loops

## `for` loops

**C-type loop:**

~~~~
nLines=5

for (( i=2; i<=$nLines; i++ ))
do
	echo "$i"
done
~~~~

**Compact loop:**

~~~~
for i in {0..3};
do
	echo "$i"
done
~~~~

# Read in lines from a file


## `while` loop

Loop over lines in an external file:

~~~~
file="dummyfile"
while read line           
do           
	echo "line: $line"
done <${file}
~~~~

## Shell streams

- 1: is the standard output (stdout).
- 2: is the standard error (stderr).


Example:

https://stackoverflow.com/questions/818255/in-the-shell-what-does-21-mean

~~~~
g++ lots_of_errors 2>&1 | head
~~~~

> Here is one way to remember this construct (although it is not entirely accurate): at first, 2>1 may
> look like a good way to redirect stderr to stdout. However, it will actually be interpreted as
> "redirect stderr to a file named 1". & indicates that what follows is a file descriptor and not a
> filename. So the construct becomes: 2>&1.
