# `.z.z` (UTC datetime)

**References:**
- https://code.kx.com/q/ref/dotz/#zz-utc-datetime

UTC time as a datetime atom.

## Syntax

~~~~
.z.z
~~~~


**Remark:**
- `z.z` calls `gettimeofday` and so has microsecond precision

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------

# `.z.Z` (local datetime)

**References:**
- https://code.kx.com/q/ref/dotz/#zz-local-datetime

Local time as a datetime atom.

## Syntax

~~~~
.z.Z
~~~~

The offset from UTC is fetched from the OS: kdb+ does not have its own time-offset database.

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------

## Examples

~~~~
.z.Z
2021.05.28T20:30:35.929
~~~~
