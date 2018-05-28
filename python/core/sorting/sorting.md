# sorting in `python`

**References:**
- https://docs.python.org/3/howto/sorting.html


## `sorted()`

~~~~
>>> a = [5, 2, 3, 1, 4]
>>> sorted(a)
[1, 2, 3, 4, 5]
~~~~


### Sort with `key`



#### Sorting a dictionary

**References:**
- http://thomas-cokelaer.info/blog/2017/12/how-to-sort-a-dictionary-by-values-in-python/
- https://stackoverflow.com/questions/43960420/sort-python-dictionary-by-absolute-value-of-values

~~~~
sorted(mydict, key=lambda dict_key: abs(mydict[dict_key]))
~~~~

**Sorting a dictionary, and storing it in `OrderedDict`**:

~~~~
sorted_dict = sorted(diagnostics.items(), key=lambda x: abs(x[1]['dPOI_postfit_impact_fit_unc_lo']-x[1]['dPOI_postfit_impact_fit_unc_hi']))
ordered_dict = OrderedDict(sorted_dict)
~~~~

