# `io` module docs

**References:**
- https://docs.python.org/3/library/io.html


The io module provides Python’s main facilities for dealing with various types of I/O.
There are three main types of I/O:
- text I/O,
- binary I/O
- raw I/O.

These are generic categories, and various backing stores can be used for each of them. A concrete
object belonging to any of these categories is called a file object. Other common terms are stream
and file-like object.

Independently of its category, each concrete stream object will also have various capabilities:
it can be:
- read-only
- write-only
- or read-write.
  
It can also allow:
- arbitrary random access (seeking forwards or backwards to any location),
- or only sequential access (for example in the case of a socket or pipe).

All streams are careful about the type of data you give to them. For example giving a `str` object
to the `write()` method of a binary stream will raise a `TypeError`. So will giving a bytes object
to the `write()` method of a text stream.

## Text I/O

Text I/O expects and produces `str` objects. This means that whenever the backing store is natively
made of bytes (such as in the case of a file), encoding and decoding of data is made transparently
as well as optional translation of platform-specific newline characters.

The easiest way to create a text stream is with open(), optionally specifying an encoding:

~~~~
f = open("myfile.txt", "r", encoding="utf-8")
~~~~

## Binary I/O

Binary I/O (also called buffered I/O) expects bytes-like objects and produces `bytes` objects. No
encoding, decoding, or newline translation is performed. This category of streams can be used for
all kinds of non-text data, and also when manual control over the handling of text data is desired.

The easiest way to create a binary stream is with `open()` with `'b'` in the mode string:

~~~~
f = open("myfile.jpg", "rb")
~~~~


## Raw I/O

Raw I/O (also called unbuffered I/O) is generally used as a low-level building-block for binary and
text streams; it is rarely useful to directly manipulate a raw stream from user code. Nevertheless,
you can create a raw stream by opening a file in binary mode with buffering disabled:

~~~~
f = open("myfile.jpg", "rb", buffering=0)
~~~~


...
