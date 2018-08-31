# Format String Syntax

**References:**
- https://docs.python.org/3.7/library/string.html#format-string-syntax
- https://docs.python.org/3.7/library/string.html#formatspec


The `str.format()` method and the `Formatter` class share the same syntax for
format strings (although in the case of Formatter, subclasses can define their
own format string syntax). The syntax is related to that of formatted string
literals, but there are differences.

Format strings contain "replacement fields" surrounded by curly braces `{}`.
Anything that is not contained in braces is considered literal text, which is
copied unchanged to the output. If you need to include a brace character in the
literal text, it can be escaped by doubling: `{{` and `}}`.

The grammar for a replacement field is as follows:

~~~~
    replacement_field ::=  "{" [field_name] ["!" conversion] [":" format_spec] "}"
    field_name        ::=  arg_name ("." attribute_name | "[" element_index "]")*
    arg_name          ::=  [identifier | digit+]
    attribute_name    ::=  identifier
    element_index     ::=  digit+ | index_string
    index_string      ::=  <any source character except "]"> +
    conversion        ::=  "r" | "s" | "a"
    format_spec       ::=  <described in the next section>
~~~~

In less formal terms, the replacement field can start with a `field_name` that
specifies the object whose value is to be formatted and inserted into the
output instead of the replacement field. The `field_name` is optionally followed
by a `conversion` field, which is preceded by an exclamation point `'!'`, and a
`format_spec`, which is preceded by a colon `':'`. These specify a non-default
format for the replacement value.

See also the Format Specification Mini-Language section.

The `field_name` itself begins with an `arg_name` that is either a number or a
keyword. If it’s a number, it refers to a positional argument, and if it’s a
keyword, it refers to a named keyword argument. If the numerical `arg_names` in a
format string are 0, 1, 2, ... in sequence, they can all be omitted (not just
some) and the numbers 0, 1, 2, ... will be automatically inserted in that order.
Because `arg_name` is not quote-delimited, it is not possible to specify
arbitrary dictionary keys (e.g., the strings `'10'` or `':-]'`) within a format
string. The `arg_name` can be followed by any number of index or attribute
expressions. An expression of the form `'.name'` selects the named attribute
using `getattr()`, while an expression of the form `'[index]'` does an index lookup
using `__getitem__()`.

Changed in version 3.1: The positional argument specifiers can be omitted for
`str.format()`, so `'{} {}'.format(a, b)` is equivalent to `'{0} {1}'.format(a, b)`.

Changed in version 3.4: The positional argument specifiers can be omitted for
`Formatter`.

Some simple format string examples:

~~~~
"First, thou shalt count to {0}"  # References first positional argument
"Bring me a {}"                   # Implicitly references the first positional argument
"From {} to {}"                   # Same as "From {0} to {1}"
"My quest is {name}"              # References keyword argument 'name'
"Weight in tons {0.weight}"       # 'weight' attribute of first positional arg
"Units destroyed: {players[0]}"   # First element of keyword argument 'players'.
~~~~

The conversion field causes a type coercion before formatting. Normally, the
job of formatting a value is done by the `__format__()` method of the value
itself. However, in some cases it is desirable to force a type to be formatted
as a string, overriding its own definition of formatting. By converting the
value to a string before calling `__format__()`, the normal formatting logic is
bypassed.

Three conversion flags are currently supported: `'!s'` which calls `str()` on the
value, `'!r'` which calls `repr()` and `'!a'` which calls `ascii()`.

Some examples:

~~~~
"Harold's a clever {0!s}"        # Calls str() on the argument first
"Bring out the holy {name!r}"    # Calls repr() on the argument first
"More {!a}"                      # Calls ascii() on the argument first
~~~~

The `format_spec` field contains a specification of how the value should be
presented, including such details as field width, alignment, padding, decimal
precision and so on. Each value type can define its own “formatting
mini-language” or interpretation of the `format_spec`.

Most built-in types support a common formatting mini-language, which is
described in the next section.

A `format_spec` field can also include nested replacement fields within it. These
nested replacement fields may contain a field name, conversion flag and format
specification, but deeper nesting is not allowed. The replacement fields within
the `format_spec` are substituted before the `format_spec` string is interpreted.
This allows the formatting of a value to be dynamically specified.

See the Format examples section for some examples.

------------------------------------------------------------------

## Format Specification Mini-Language

- https://docs.python.org/3.7/library/string.html#formatspec

"Format specifications" are used within replacement fields contained within a format string to
define how individual values are presented (see Format String Syntax and Formatted string literals).
They can also be passed directly to the built-in `format()` function. Each formattable type may
define how the format specification is to be interpreted.

Most built-in types implement the following options for format specifications, although some of the
formatting options are only supported by the numeric types.

A general convention is that an empty format string (`""`) produces the same result as if you had
called `str()` on the value. A non-empty format string typically modifies the result.

The general form of a standard format specifier is:

~~~~
format_spec     ::=  [[fill]align][sign][#][0][width][grouping_option][.precision][type]
fill            ::=  <any character>
align           ::=  "<" | ">" | "=" | "^"
sign            ::=  "+" | "-" | " "
width           ::=  digit+
grouping_option ::=  "_" | ","
precision       ::=  digit+
type            ::=  "b" | "c" | "d" | "e" | "E" | "f" | "F" | "g" | "G" | "n" | "o" | "s" | "x" | "X" | "%"
~~~~


If a valid `align` value is specified, it can be preceded by a fill character
that can be any character and defaults to a space if omitted. It is not
possible to use a literal curly brace (“`{`” or `“`}”) as the fill character in a
formatted string literal or when using the `str.format()` method. However, it is
possible to insert a curly brace with a nested replacement field. This
limitation doesn’t affect the `format()` function.

The meaning of the various alignment options is as follows:

The meaning of the various alignment options is as follows:

| Option | Meaning |
| ------ | -------- |
| '<'  |	Forces the field to be left-aligned within the available space (this is the default for most objects). |
| '>'  |	Forces the field to be right-aligned within the available space (this is the default for numbers). |
| '='  |	Forces the padding to be placed after the sign (if any) but before the digits. This is used for printing fields in the form ‘+000000120’. This alignment option is only valid for numeric types. It becomes the default when ‘0’ immediately precedes the field width. |
| '^'  |	Forces the field to be centered within the available space. |


...
(to be read and filled)

## Examples


...
(to be read and filled)

