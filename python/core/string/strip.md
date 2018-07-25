# String stripping

**Available commands:**
- `str.lstrip()`
- `str.rstrip()`
- `str.strip()`

## `str.lstrip([chars])`

    Return a copy of the string with leading characters removed. The chars argument is a string
    specifying the set of characters to be removed. If omitted or None, the chars argument defaults to
    removing whitespace. The chars argument is not a prefix; rather, all combinations of its values are
    stripped:

    ~~~~
    >>> '   spacious   '.lstrip()
    'spacious   '
    >>> 'www.example.com'.lstrip('cmowz.')
    'example.com'
    ~~~~


## `str.rstrip([chars])`

    Return a copy of the string with trailing characters removed. The chars argument is a string
    specifying the set of characters to be removed. If omitted or None, the chars argument defaults to
    removing whitespace. The chars argument is not a suffix; rather, all combinations of its values are
    stripped:

    ~~~~
    >>> '   spacious   '.rstrip()
    '   spacious'
    >>> 'mississippi'.rstrip('ipz')
    'mississ'
    ~~~~


## `str.strip([chars])`

    Return a copy of the string with the leading and trailing characters removed. The chars argument
    is a string specifying the set of characters to be removed. If omitted or None, the chars argument
    defaults to removing whitespace. The chars argument is not a prefix or suffix; rather, all
    combinations of its values are stripped:

    ~~~~
    >>> '   spacious   '.strip()
    'spacious'
    >>> 'www.example.com'.strip('cmowz.')
    'example'
    ~~~~

    The outermost leading and trailing chars argument values are stripped from the string.
    Characters are removed from the leading end until reaching a string character that is not contained
    in the set of characters in chars. A similar action takes place on the trailing end. For example:

    ~~~~
    >>> comment_string = '#....... Section 3.2.1 Issue #32 .......'
    >>> comment_string.strip('.#! ')
    'Section 3.2.1 Issue #32'
    ~~~~


## Comparison

~~~~
>>> str = '   spacious   '

>>> str.lstrip()
'spacious   '

>>> str.rstrip()
'   spacious'

>>> str.strip()
'spacious'
~~~~


~~~~
>>> str = 'www.example.com'
>>> chars = 'cmowz.'

>>> str.lstrip(chars)
'example.com'


>>> str.rstrip(chars)
'www.example'

>>> str.strip(chars)
'example'
~~~~
