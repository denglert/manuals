# Table attributes

**References:**
- https://www.neueda.com/kdb-attributes-for-dummies/
- http://www.timestored.com/kdb-guides/table-attributes
- https://code.kx.com/q4m3/8_Tables/#88-attributes
- https://code.kx.com/q/wp/data-management/#attributes-on-splayed-partitioned-tables


|  **Attribute** |                    **Description**                           |   **Space overhead**  |
| -------------- | ------------------------------------------------------------ | --------------------- |
| `s#` (sorted)  |                                                              |        0              |
| `u#` (unique)  |                                                              |        16*n           |
| `p#` (parted)  | All elements of the same value occur in one sequential block |        24*u           |
| `g#` (grouped) |                                                              |       (24*u)+4*n      |

**Remarks:**
- **Space overhead** the additional disk space (or memory) overhead, in bytes, of
    each of the attributes, where `n` is the size of the list and `u` is the number of unique items. 

When the unique, parted or grouped attribute is set on a list, `q` creates a hash table alongside the
list.
For 
- a list with the grouped attribute, the hash table maps the items to the indexes where they
occur;
- for a parted list it maps to the index at which the item starts;
- and for a list with the unique attribute applied, it maps to the index of the item.
- the sorted attribute merely marks the list as sorted, so that q knows to use binary search on
  functions such as `=`, `in` , `?`, and `within`.



-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

## Sorted `s#`


### Examples


-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------


## Unique `u#`


### Examples


-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------


## Parted `p#`



### Examples



-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------


## Grouped `g#`



### Examples


