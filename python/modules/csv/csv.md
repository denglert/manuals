# `csv` module manuals


## Read


### `reader`

~~~~
csv.reader(csvfile, dialect='excel', **fmtparams)¶
~~~~


### `DictReader`


Read a single row:

~~~~
with open(out_path, "r") as out_f:
    reader = csv.DictReader(out_f, delimiter=' ')
    row = next(reader)
~~~~

--------------------------------------------------------------

## Writer


### `writer`

~~~~
csv.writer(csvfile, dialect='excel', **fmtparams)
~~~~


### `DictWriter`


~~~~
with open('names.csv', 'w', newline='') as csvfile:
    fieldnames = ['first_name', 'last_name']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

    writer.writeheader()
    writer.writerow({'first_name': 'Baked', 'last_name': 'Beans'})
    writer.writerow({'first_name': 'Lovely', 'last_name': 'Spam'})
    writer.writerow({'first_name': 'Wonderful', 'last_name': 'Spam'})
~~~~

## Examples

~~~~
with open('eggs.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=' ', quotechar='|')
    for row in spamreader:
        print(', '.join(row))
~~~~

