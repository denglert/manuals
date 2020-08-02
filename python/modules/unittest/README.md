# `unittest` docs


**References:**
- https://docs.python.org/3/library/unittest.html
- https://docs.python-guide.org/writing/tests/
- https://www.youtube.com/watch?v=6tNS--WetLI


**Subtopic:**
- [Assert methods][assert]
- [Examples][examples]
- [Mock][mock]


## Template


~~~~
import unittest

from unittest.mock import patch, Mock
# or
from mock import patch, Mock

from your_module_to_be_tested.submodule import function_to_test


class Test(unittest.TestCase)

    @patch('your_module_to_be_tested.submodule.process', Mock())
    def test_some_function(self):
        
        args = ...
        kwargs = ...
        function_return = function_to_test(args, kwargs)
        self.assert(functionReturn)
~~~~



[assert]: ./asserts/
[examples]: ./examples/
[mock]: ./mock/
