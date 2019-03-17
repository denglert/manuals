# `logging` recipes

## Basic example

~~~~
import logging
logger = logging.getLogger(__name__)

file_handler = logging.FileHandler(path_to_file)
file_handler.setLevel(logging.WARNING)

logger.add(file_handler)
~~~~

