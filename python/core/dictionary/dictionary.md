# Dictionaries in python


**All references:**
- https://codereview.stackexchange.com/questions/25465/set-a-default-if-key-not-in-a-dictionary-or-value-is-none


~~~~
dict = {
        "key1" : "value2",
         123   : 456
       }
~~~~



**Retrieve value:**

~~~~
val = dict[key]
~~~~

Throws keyerror if key is not in the dict.

~~~~
val = dict.get(key)
~~~~


Returns `None` if key is not in the dict.
