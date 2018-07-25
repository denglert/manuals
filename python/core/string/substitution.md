# String substitution

## `replace(old, new[, count])`

- https://www.pythoncentral.io/pythons-string-replace-method-replacing-python-strings/

Return a copy of the string with all occurrences of substring `old` replaced by `new`. If the
optional argument `count` is given, only the first count occurrences are replaced.

~~~~
str.replace(old_substr, new_substr)
~~~~


## Using the `re` module

Substitution with the `re.sub(pattern, repl, string, count=0, flags=0)` function.


Example:

~~~~
logfile_filename = re.sub('.dat', '.log', output_data_file)
~~~~

More detail on the `re` module in the [re docs](./../../modules/re/re.md).
