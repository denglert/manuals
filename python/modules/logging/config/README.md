# `logging` config


Format of the log messages (`LogRecord`)

You change the format of the log message via the `format` option:

~~~
logging.basicConfig(filename='test.log',
                    level=logging.DEBUG,
                    format='%(asctime)s:%(levelname)s:  %(message)s'
                   )
~~~

where the format placeholders in the constructor can be found here `LogRecord attributes`:
https://docs.python.org/3/library/logging.html#logrecord-attributes

