# `logging` module

- `DEBUG`: Detailed information, typically of interest only when diagnosing problems.
- `INFO`: Confirmation that things are working as expected.
- `WARNING`: An indication that something unexpected happened, or indicative of some problem in the
  near future (e.g. 'disk space low'). The software is still working as expected.
  - `ERROR`: Due to a more serious problem, the software has not been able to perform some function.
  - `CRITICAL`: A serious error, indicating that the program itself may be unable to continue running.

Default `logging` level: WARNING


## Format of the log messages (`LogRecord`)

You change the format of the log message via the `format` option:

~~~
logging.basicConfig(filename='test.log',
                    level=logging.DEBUG,
                    format='%(asctime)s:%(levelname)s:  %(message)s'
                   )
~~~

where the format placeholders in the constructor can be found here `LogRecord attributes`:
https://docs.python.org/3/library/logging.html#logrecord-attributes


## Tips

### Including TraceBack

If you want to include the TraceBack use `.exception()`

~~~
logger.exception('Something bad happened!')
~~~

## Reference

Corey Schafer:
- https://youtu.be/-ARI4Cz-awo
- https://youtu.be/jxmzY9soFXg

