# Python `class`


## References

Python data model
- 2: https://docs.python.org/2/reference/datamodel.html
- 3.6: https://docs.python.org/3.6/reference/datamodel.html

## Templates

~~~~
class ClassTemplate:

    def __init__(self, *args, **kwargs):
        internal_dict = {}
        pass

    # - Alternative constructors
    @classmethod
    def from_other_args(cls, *args, **kwargs)
        cls(args, kwargs)

    def __getitem__(self, key):
        return self.internal_dict[key]

    def __setitem__(self, key, value):
        self.internal_dict[key] = value

    def __getattr__(self, name):
        return self.internal_dict[name]

    def __contains__(self, key):
        return key in self.internal_dict

    def __str__(self):
        return self.model_parameters()

    def __repr__(self):
        return self.model_parameters()
    
    def __iter__(self):
        return iter(self.internal_dict)

    def keys(self):
        return self.internal_dict.keys()

    def items(self):
        return self.internal_dict.items()

    def values(self):
        return self.internal_dict.values()
~~~~
