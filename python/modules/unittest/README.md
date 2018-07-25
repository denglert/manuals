# `unittest` docs


**References:**
- https://docs.python.org/3/library/unittest.html
- https://docs.python-guide.org/writing/tests/
- https://www.youtube.com/watch?v=6tNS--WetLI


## Example(s)

~~~~
import unittest

def fun(x):
    return x + 1

class MyTest(unittest.TestCase):
    def test(self):
        self.assertEqual(fun(3), 4)

if __name__ == '__main__':
    unittest.main()
~~~~

