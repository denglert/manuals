# `logging` handlers

## `StreamHandler`:

~~~~
stdout_handler = logging.StreamHandler(sys.stdout)
stdout_handler.setLevel(logging.INFO)
~~~~

## `FileHandler`:

~~~~
file_handler = logging.FileHandler(path_to_file)
file_handler.setLevel(logging.WARNING)
~~~~

