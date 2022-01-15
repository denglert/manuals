# Partitioned tables


**References:**
- https://code.kx.com/q/kb/partition/
- https://code.kx.com/q4m3/14_Introduction_to_Kdb+/#143-partitioned-tables
- https://code.kx.com/q/ref/dotq/#qind-partitioned-index
- http://www.odbms.org/2020/09/partitioning-data-in-kdb/
- https://github.com/rianoc/partitioning


**Description:**
A `partitioned table` is a `splayed table` that is further decomposed by grouping records having common
values along a column of special type.
The allowable special column types have the property that the underlying value is an integer:
- date
- month
- year
- long

The slice of records having a given value is splayed into a directory, called a partition, whose
name is that common value. In the canonical finance example, historical trades (or quotes) are
stored in daily partition directories – remember a q date is an integer under the covers.


-------------------------------------------------------------------------------------------------------

## Important

### No mixing of partitioning within the same database

A kdb+ database can only have a single partition domain. This means that you must create separate
databases if you need partitions of different granularity.

**For example:** you cannot have daily and monthly partitions in one database.


### Query optimization

Always qualify the partition column in the first where sub-phrase in any query against a partitioned
table. If you do not, you will cause all partitions to be loaded into memory and will probably
live-lock the server. Well before this completes, your colleagues will be at your desk with
pitchforks and burning torches.
