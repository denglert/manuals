# Historical database (HDB)

**References:**
- https://code.kx.com/q/learn/startingkdb/hdb/
- https://code.kx.com/q/kb/compacting-hdb-sym/

A historical database (HDB) holds data before today, and its tables would be stored on disk, being
much too large to fit in memory. Each new day’s records would be added to the HDB at the end of day.

Typically, large tables in the HDB (such as daily tick data) are stored splayed, i.e. each column is
stored in its own file.
