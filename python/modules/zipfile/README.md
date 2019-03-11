# `zipfile` module

**References:**
- https://docs.python.org/3/library/zipfile.html
- https://www.geeksforgeeks.org/working-zip-files-python/


~~~~
from zipfile import ZipFile

with ZipFile(zipfile_out_path, 'w') as zip:
    for file in files:
        zip.write(file, os.path.basename(file))
~~~~
