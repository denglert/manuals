# Assert methods


**References:**
- https://docs.python.org/3/library/unittest.html#assert-methods


## `unitttest.TestCase` assert methods


**References:**
- https://docs.python.org/3/library/unittest.html#assert-methods


|      **Method**             |     **Checks that**    | 
| --------------------------- | ---------------------- |
| `assertEqual(a, b)`         |     `a == b`           |
| `assertNotEqual(a, b)`      |     `a != b`           |
| `assertTrue(a)`             | `bool(x) is True`      |
| `assertFalse(a)`            | `bool(x) is False`     |
| `assertIs(a, b)`            |   `a is b`             |
| `assertIsNot(a, b)`         |   `a is not b`         |
| `assertIsNone(x)`           |  `x is None`           |
| `assertIsNotNone(x)`        |  `x is not None`       |
| `assertIsIn(a, b)`          |  `a in b`              |
| `assertNotIn(a, b)`         |  `a not in b`          |
| `assertIsInstance(a, b)`    | `isinstance(a, b)`     |
| `assertNotIsInstance(a, b)` | `not isinstance(a, b)` |
| `assertRaises(exception)`   | `exception` is raised  |
| `assertAlmostEqual(a, b)`   | `round(a-b, 7) == 0`   |
| `assertGreater(a, b)`       |      `a > b`           |
| `assertGreaterEqual(a, b)`  |      `a >= b`          |
| `assertLess(a, b)`          |      `a < b`           |
| `assertLessEqual(a, b)`     |      `a <= b`          |
| `assertListEqual(a, b)`     |   `list(a) == list(b)` |
| `assertTupleEqual(a, b)`    | `tuple(a) == tuple(b)` |
| `assertDictEqual(a, b)`     | `dict(a) == dict(b)`   |



## `pandas.testing` assert methods

**References:**
- https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.testing.assert_frame_equal.html


~~~~
pandas.testing.assert_frame_equal(left,
								  right,
								  check_dtype=True,
								  check_index_type='equiv',
								  check_column_type='equiv',
								  check_frame_type=True,
								  check_less_precise=<object
								  object>,
								  check_names=True,
								  by_blocks=False,
								  check_exact=False,
								  check_datetimelike_compat=False,
								  check_categorical=True,
								  check_like=False,
								  check_freq=True,
								  rtol=1e-05,
								  atol=1e-08,
								  obj='DataFrame')
~~~~

