# `logging` module

**References:**
- https://docs.python.org/3/library/logging.html
- https://docs.python.org/3/howto/logging.html#logging-basic-tutorial
- Youtube tutorials:
    - https://youtu.be/-ARI4Cz-awo
    - https://youtu.be/jxmzY9soFXg

**Subtopics:**
- [config](./config/)
- [handlers](./handlers/)
- [recipes](./recipes/)



## Logging levels

- `DEBUG`: Detailed information, typically of interest only when diagnosing problems.
- `INFO`: Confirmation that things are working as expected.
- `WARNING`: An indication that something unexpected happened, or indicative of some problem in the
  near future (e.g. 'disk space low'). The software is still working as expected.
  - `ERROR`: Due to a more serious problem, the software has not been able to perform some function.
  - `CRITICAL`: A serious error, indicating that the program itself may be unable to continue running.

Default `logging` level: WARNING


## Tips

### Including TraceBack

If you want to include the TraceBack use `.exception()`

~~~
logger.exception('Something bad happened!')
~~~
