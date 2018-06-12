# `memory_profiler` manuals

**References:**
- https://pypi.org/project/memory_profiler/


## How to use:


1. Place `@profile` decorator before the function that you'd like to be tested:

~~~~
@profile
def function_to_be_tested(nlength=1000):

    a = [i for i in range(nlength)]

    b = [i for i in range(nlength*10)]

    c = [i for i in range(nlength*100)]


function_to_be_tested()
~~~~

2. Run profiler by calling with `-m profiler` flag on the script:

~~~~
python -m memory_profiler <script.py>
~~~~
