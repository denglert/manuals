# Indexing lists in `q`

**References:**
- https://code.kx.com/q4m3/3_Lists/#34-indexing
- https://code.kx.com/q4m3/3_Lists/#38-iterated-indexing-and-indexing-at-depth
- https://code.kx.com/q4m3/3_Lists/#39-indexing-with-lists
- https://code.kx.com/q4m3/3_Lists/#310-elided-indices


----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------

## Accessing a single element of the list

**References:**
- https://code.kx.com/q4m3/3_Lists/#341-index-notation

### Syntax

~~~~
l index
~~~~

or 

~~~~
l[index]
~~~~

**Remarks:**
- If the index is out-of-bounds it returns `0N`.

### Examples

~~~~
l: (100; 200; 300);
~~~~


~~~~
l 0
~~~~

~~~~
l[0]
~~~~

----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------


## Indexed assignment

**References:**
- https://code.kx.com/q4m3/3_Lists/#342-indexed-assignment


### Syntax

~~~~
l[index]: value;
~~~~


**Remarks:**
- Index assignment into a simple list enforces strict type matching with no type promotion.
  Otherwise put, when you assign an item into a simple list, the type must match exactly – i.e., a
    narrower type is not widened.

----------------------------------------------------------------------------------------------------------

### Examples

~~~~
l: 1 2 3;
l[1]: 42;
~~~~


~~~~
l: 1 2 3;
l[1]: 42.0f;
'type
~~~~

----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------

## Indexing domain

**References:**
- https://code.kx.com/q4m3/3_Lists/#343-indexing-domain

Providing an invalid data type for the index results in an error.
