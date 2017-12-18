# Regular expressions

| Symbol | Meaning |
| ---- | ------------------------------------ |
| `.`  | Any Character Except New Line        |
| `\d` | Digit (0-9)                          |
| `\D` | Not a Digit (0-9)                    |
| `\w` | Word Character (a-z, A-Z, 0-9, _)    |
| `\W` | Not a Word Character                 |
| `\s` | Whitespace (space, tab, newline)     |
| `\S` | Not Whitespace (space, tab, newline) |

### Anchors:

|  Symbol |        Meaning        |
| ------- | --------------------- |
| `\b`    | Word Boundary         |
| `\B`    | Not a Word Boundary   |
| `^`     | Beginning of a String |
| `$`     | End of a String       |


| Symbol  |              Meaning               |
| ------- | ---------------------------------- |
| `[]`    | Matches Characters in brackets     |
| `[^ ]`  | Matches Characters NOT in brackets |
| `|`     | Either Or                          |
| `( )`   | Group                              |

### Quantifiers:

|  Symbol |                Meaning              |
| ------- | ----------------------------------- |
| `*`     | 0 or More                           |
| `+`     | 1 or More                           |
| `?`     | 0 or One                            |
| `{3}`   | Exact Number                        |
| `{3,4}` | Range of Numbers (Minimum, Maximum) |


#### Sample Regpressions



## List of meta characters that need to be escaped:

.[{()\^$|?*+
