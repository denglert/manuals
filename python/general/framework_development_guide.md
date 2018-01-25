# Framework development guide

General guidelines:
- If the framework is written from scratch, follow the [PEP8 style guidelines][PEP8]
- [`logging`][logging] module to write to both stdout and a log-file.
- Create custom python classes to store all information related to a specific object


## Config file

To store config files:
- `yaml` 
- `json` (included in factory python distro)

## Data

Modules to use for data manipulation, storage, reading and writing in order of preference:
1. [`pandas`][pandas]
2. `csv.DictReader()` (included in factory pthon distro)


[logging]: ../logging/logging.md
[PEP8]: https://www.python.org/dev/peps/pep-0008/
[pandas]: https://pandas.pydata.org/
