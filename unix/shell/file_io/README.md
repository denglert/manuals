# File input/output

**Print out the first 'n' lines of the file:**

~~~~
head -n <number of lines>
~~~~

**Print out the last 'n' lines of the file:**

~~~~
tail -n <number of lines>
~~~~

**Replace a string a file:**

Inplace:

~~~~
sed -i "s/oldstring/newstring/g" inputfile
~~~~


Create a new file:

~~~~
sed "s/oldstring/newstring/g" <inputfile> outfile
~~~~

**Print out only the first field, when using delimiter =:**

~~~~
cut -d = -f 1 
~~~~



## To find out what kind of line endings are used in a text file

**Get the file type:**

~~~~
file <file>
~~~~

*See verbose content of file*
*Note: This should display newlines*

~~~~
cat -v <file>
~~~~

In vim :

~~~~
:set noeol
~~~~

try also:

~~~~
:set binary
:set noeol
:wq
~~~~
