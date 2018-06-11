# `re` module manuals

**All references:**
- https://docs.python.org/3/library/re.html


## `re.findall(pattern, string, flags=0)`

Return all non-overlapping matches of pattern in `string`, as a list of strings. The `string` is
scanned left-to-right, and matches are returned in the order found. If one or more groups are
present in the `pattern`, return a list of groups; this will be a list of tuples if the pattern has
more than one group. Empty matches are included in the result.

### Examples(s)

~~~~
regex_expression = r"[-+]?\d*\.\d+|[-+]?\d+"
param = re.findall(regex_expression, basename)[0]
~~~~




## `re.sub(pattern, repl, string, count=0, flags=0)`

Return the string obtained by replacing the leftmost non-overlapping occurrences of `pattern` in
`string` by the replacement `repl`. If the pattern isn’t found, `string` is returned unchanged.
`repl` can be a string or a function; if it is a string, any backslash escapes in it are processed. That
is, `\n` is converted to a single newline character, `\r` is converted to a carriage return, and so
forth.  Unknown escapes such as `\&` are left alone.


### Examples(s)


~~~~
logfile_filename = re.sub('.dat', '.log', output_data_file)
~~~~
