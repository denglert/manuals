# `.z.zd` (zip defaults)

**References:**
- https://code.kx.com/q/ref/dotz/#zzd-zip-defaults


## Syntax

~~~~
.z.zd:(lbs; alg; lvl)
~~~~

where:
- `lbs` : int
    logical block size
- `alg` : int
    compression algorithm
- `lvl` : int
    compression level

They set default values for logical block size, compression algorithm and compression level that
apply when saving to files with no file extension.
