# Environment variables

**References:**
- https://code.kx.com/q4m3/14_Introduction_to_Kdb+/#1481-the-environment-variables

- `QHOME`: 
    Specifies the directory where kdb+ expects to find the bootstrap file `q.k`.
    By default, it also looks there for the license file `k4.lic`.
    If `QHOME` is not defined, `kdb+` falls back to `$HOME/q` for
    Unix-based systems and `c:\q` for Windows.
- `QLIC`:
    The environment variable QLIC overrides the default location for the license file. If `QLIC` is
    not defined, `kdb+` falls back to `QHOME` (or its fallback).
- `QINIT`:
    Specifies the name of the file that is executed immediately after
    the load of `q.k`. If `QINIT` is not defined, `kdb+` attempts to load the file `q.q` from `QHOME`. If
    `QHOME` is not defined or `q.q` is not found, no error is reported.

