# `json` module

~~~~
import json
~~~~

## Read

~~~~
with open(json_file_path, 'r') as json_file:
    cfg_dictionary = json.load(cfg_path)
~~~~

## Write

~~~~
with open(json_file_path, 'w') as json_file:
    json.dump(cfg_dictionary, json_file, indent=2)
~~~~

