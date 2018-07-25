# List of `string` functions

(not finished)

- `str.capitalize()`:
	Return a copy of the string with its first character capitalized and the rest lowercased.

- `str.casefold()`:
	Return a casefolded copy of the string.

- `str.center(width[, fillchar])`:
	Return centered in a string of length width. Padding is done using the specified fillchar (default is an ASCII space). 

- `str.count(sub[, start[, end]])`:
	Return the number of non-overlapping occurrences of substring sub in the range [start, end]. Optional arguments start and end are interpreted as in slice notation.

- `str.encode(encoding="utf-8", errors="strict")`:
    Return an encoded version of the string as a bytes object.

- `str.endswith(suffix[, start[, end]])`:
    Return True if the string ends with the specified suffix, otherwise return False.

- `str.expandtabs(tabsize=8)`:
    Return a copy of the string where all tab characters are replaced by one or more spaces, depending on the current column and the given tab size. 
- `str.find(sub[, start[, end]])`:
    Return the lowest index in the string where substring sub is found within the slice s[start:end]. Optional arguments start and end are interpreted as in slice notation. Return -1 if sub is not found.

- `str.format(*args, **kwargs)`:
    Perform a string formatting operation.

- `str.format_map(mapping)`:
    Similar to str.format(**mapping), except that mapping is used directly and not copied to a dict.

- `str.index(sub[, start[, end]])`:
    Like find(), but raise ValueError when the substring is not found.

- `str.isalnum()`:
    Return true if all characters in the string are alphanumeric and there is at least one character, false otherwise.

- `str.isalpha()`:
    Return true if all characters in the string are alphabetic and there is at least one character, false otherwise.

- `str.isascii()`:
    Return true if the string is empty or all characters in the string are ASCII, false otherwise.

- `str.isdecimal()`:
    Return true if all characters in the string are decimal characters and there is at least one character, false otherwise.

- `str.isdigit()`:
    Return true if all characters in the string are digits and there is at least one character, false otherwise.

- `str.isidentifier()`:
    Return true if the string is a valid identifier according to the language definition, section Identifiers and keywords.

- `str.islower()`::
    Return true if all cased characters [4] in the string are lowercase and there is at least one cased character, false otherwise.

- `str.isnumeric()`:
    Return true if all characters in the string are numeric characters, and there is at least one character, false otherwise.

- `str.isprintable()`:
    Return true if all characters in the string are printable or the string is empty, false otherwise.

- `str.isspace()`:
    Return true if there are only whitespace characters in the string and there is at least one character, false otherwise.

- `str.istitle()`:
    Return true if the string is a titlecased string and there is at least one character, for example uppercase characters may only follow uncased characters and lowercase characters only cased ones. Return false otherwise.

- `str.isupper()`:
    Return true if all cased characters [4] in the string are uppercase and there is at least one cased character, false otherwise.

- `str.join(iterable)`:
    Return a string which is the concatenation of the strings in iterable.

- `str.ljust(width[, fillchar])`:
    Return the string left justified in a string of length width.

str.lower()

    Return a copy of the string with all the cased characters [4] converted to lowercase.

    The lowercasing algorithm used is described in section 3.13 of the Unicode Standard.

str.lstrip([chars])

    Return a copy of the string with leading characters removed. The chars argument is a string specifying the set of characters to be removed. If omitted or None, the chars argument defaults to removing whitespace. The chars argument is not a prefix; rather, all combinations of its values are stripped:
    >>>

    >>> '   spacious   '.lstrip()
    'spacious   '
    >>> 'www.example.com'.lstrip('cmowz.')
    'example.com'

static str.maketrans(x[, y[, z]])

    This static method returns a translation table usable for str.translate().

    If there is only one argument, it must be a dictionary mapping Unicode ordinals (integers) or characters (strings of length 1) to Unicode ordinals, strings (of arbitrary lengths) or None. Character keys will then be converted to ordinals.

    If there are two arguments, they must be strings of equal length, and in the resulting dictionary, each character in x will be mapped to the character at the same position in y. If there is a third argument, it must be a string, whose characters will be mapped to None in the result.

str.partition(sep)

    Split the string at the first occurrence of sep, and return a 3-tuple containing the part before the separator, the separator itself, and the part after the separator. If the separator is not found, return a 3-tuple containing the string itself, followed by two empty strings.

str.replace(old, new[, count])

    Return a copy of the string with all occurrences of substring old replaced by new. If the optional argument count is given, only the first count occurrences are replaced.

str.rfind(sub[, start[, end]])

    Return the highest index in the string where substring sub is found, such that sub is contained within s[start:end]. Optional arguments start and end are interpreted as in slice notation. Return -1 on failure.

str.rindex(sub[, start[, end]])

    Like rfind() but raises ValueError when the substring sub is not found.

str.rjust(width[, fillchar])

    Return the string right justified in a string of length width. Padding is done using the specified fillchar (default is an ASCII space). The original string is returned if width is less than or equal to len(s).

str.rpartition(sep)

    Split the string at the last occurrence of sep, and return a 3-tuple containing the part before the separator, the separator itself, and the part after the separator. If the separator is not found, return a 3-tuple containing two empty strings, followed by the string itself.

str.rsplit(sep=None, maxsplit=-1)

    Return a list of the words in the string, using sep as the delimiter string. If maxsplit is given, at most maxsplit splits are done, the rightmost ones. If sep is not specified or None, any whitespace string is a separator. Except for splitting from the right, rsplit() behaves like split() which is described in detail below.

str.rstrip([chars])

    Return a copy of the string with trailing characters removed. The chars argument is a string specifying the set of characters to be removed. If omitted or None, the chars argument defaults to removing whitespace. The chars argument is not a suffix; rather, all combinations of its values are stripped:
    >>>

    >>> '   spacious   '.rstrip()
    '   spacious'
    >>> 'mississippi'.rstrip('ipz')
    'mississ'

str.split(sep=None, maxsplit=-1)

    Return a list of the words in the string, using sep as the delimiter string. If maxsplit is given, at most maxsplit splits are done (thus, the list will have at most maxsplit+1 elements). If maxsplit is not specified or -1, then there is no limit on the number of splits (all possible splits are made).

    If sep is given, consecutive delimiters are not grouped together and are deemed to delimit empty strings (for example, '1,,2'.split(',') returns ['1', '', '2']). The sep argument may consist of multiple characters (for example, '1<>2<>3'.split('<>') returns ['1', '2', '3']). Splitting an empty string with a specified separator returns [''].

    For example:
    >>>

    >>> '1,2,3'.split(',')
    ['1', '2', '3']
    >>> '1,2,3'.split(',', maxsplit=1)
    ['1', '2,3']
    >>> '1,2,,3,'.split(',')
    ['1', '2', '', '3', '']

    If sep is not specified or is None, a different splitting algorithm is applied: runs of consecutive whitespace are regarded as a single separator, and the result will contain no empty strings at the start or end if the string has leading or trailing whitespace. Consequently, splitting an empty string or a string consisting of just whitespace with a None separator returns [].

    For example:
    >>>

    >>> '1 2 3'.split()
    ['1', '2', '3']
    >>> '1 2 3'.split(maxsplit=1)
    ['1', '2 3']
    >>> '   1   2   3   '.split()
    ['1', '2', '3']

str.splitlines([keepends])

    Return a list of the lines in the string, breaking at line boundaries. Line breaks are not included in the resulting list unless keepends is given and true.

    This method splits on the following line boundaries. In particular, the boundaries are a superset of universal newlines.
    Representation 	Description
    \n 	Line Feed
    \r 	Carriage Return
    \r\n 	Carriage Return + Line Feed
    \v or \x0b 	Line Tabulation
    \f or \x0c 	Form Feed
    \x1c 	File Separator
    \x1d 	Group Separator
    \x1e 	Record Separator
    \x85 	Next Line (C1 Control Code)
    \u2028 	Line Separator
    \u2029 	Paragraph Separator

    Changed in version 3.2: \v and \f added to list of line boundaries.

    For example:
    >>>

    >>> 'ab c\n\nde fg\rkl\r\n'.splitlines()
    ['ab c', '', 'de fg', 'kl']
    >>> 'ab c\n\nde fg\rkl\r\n'.splitlines(keepends=True)
    ['ab c\n', '\n', 'de fg\r', 'kl\r\n']

    Unlike split() when a delimiter string sep is given, this method returns an empty list for the empty string, and a terminal line break does not result in an extra line:
    >>>

    >>> "".splitlines()
    []
    >>> "One line\n".splitlines()
    ['One line']

    For comparison, split('\n') gives:
    >>>

    >>> ''.split('\n')
    ['']
    >>> 'Two lines\n'.split('\n')
    ['Two lines', '']

str.startswith(prefix[, start[, end]])

    Return True if string starts with the prefix, otherwise return False. prefix can also be a tuple of prefixes to look for. With optional start, test string beginning at that position. With optional end, stop comparing string at that position.

str.strip([chars])

    Return a copy of the string with the leading and trailing characters removed. The chars argument is a string specifying the set of characters to be removed. If omitted or None, the chars argument defaults to removing whitespace. The chars argument is not a prefix or suffix; rather, all combinations of its values are stripped:
    >>>

    >>> '   spacious   '.strip()
    'spacious'
    >>> 'www.example.com'.strip('cmowz.')
    'example'

    The outermost leading and trailing chars argument values are stripped from the string. Characters are removed from the leading end until reaching a string character that is not contained in the set of characters in chars. A similar action takes place on the trailing end. For example:
    >>>

    >>> comment_string = '#....... Section 3.2.1 Issue #32 .......'
    >>> comment_string.strip('.#! ')
    'Section 3.2.1 Issue #32'

str.swapcase()

    Return a copy of the string with uppercase characters converted to lowercase and vice versa. Note that it is not necessarily true that s.swapcase().swapcase() == s.

str.title()

    Return a titlecased version of the string where words start with an uppercase character and the remaining characters are lowercase.

    For example:
    >>>

    >>> 'Hello world'.title()
    'Hello World'

    The algorithm uses a simple language-independent definition of a word as groups of consecutive letters. The definition works in many contexts but it means that apostrophes in contractions and possessives form word boundaries, which may not be the desired result:
    >>>

    >>> "they're bill's friends from the UK".title()
    "They'Re Bill'S Friends From The Uk"

    A workaround for apostrophes can be constructed using regular expressions:
    >>>

    >>> import re
    >>> def titlecase(s):
    ...     return re.sub(r"[A-Za-z]+('[A-Za-z]+)?",
    ...                   lambda mo: mo.group(0)[0].upper() +
    ...                              mo.group(0)[1:].lower(),
    ...                   s)
    ...
    >>> titlecase("they're bill's friends.")
    "They're Bill's Friends."

str.translate(table)

    Return a copy of the string in which each character has been mapped through the given translation table. The table must be an object that implements indexing via __getitem__(), typically a mapping or sequence. When indexed by a Unicode ordinal (an integer), the table object can do any of the following: return a Unicode ordinal or a string, to map the character to one or more other characters; return None, to delete the character from the return string; or raise a LookupError exception, to map the character to itself.

    You can use str.maketrans() to create a translation map from character-to-character mappings in different formats.

    See also the codecs module for a more flexible approach to custom character mappings.

str.upper()

    Return a copy of the string with all the cased characters [4] converted to uppercase. Note that s.upper().isupper() might be False if s contains uncased characters or if the Unicode category of the resulting character(s) is not “Lu” (Letter, uppercase), but e.g. “Lt” (Letter, titlecase).

    The uppercasing algorithm used is described in section 3.13 of the Unicode Standard.

str.zfill(width)

    Return a copy of the string left filled with ASCII '0' digits to make a string of length width. A leading sign prefix ('+'/'-') is handled by inserting the padding after the sign character rather than before. The original string is returned if width is less than or equal to len(s).
