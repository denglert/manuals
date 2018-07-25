# File input/output in `python`


**References:**
- https://docs.python.org/3/tutorial/inputoutput.html
- https://docs.python.org/3/library/io.html
- http://hplgit.github.io/primer.html/doc/pub/input/._input-solarized005.html
- https://stackoverflow.com/questions/11053318/how-to-read-in-floats-from-a-file
- https://stackoverflow.com/questions/3277503/in-python-how-do-i-read-a-file-line-by-line-into-a-list
- http://stackabuse.com/read-a-file-line-by-line-in-python/

## Example(s)


### Read in whole file as a string

~~~~
with open(input_path, 'r') as f_in:
    file_contents = f_in.read()
print(file_contents)
~~~~

### Read in file line-by-line

~~~~
with open(input_path, 'r') as f_in:
    for line in f_in:
        print(line)
~~~~


### Read in a list of tuples

Assuming that row elements are delimited by a whitespace:

~~~~
contents = []

with open(input_path, 'r') as f_in:

    for line in f_in:
        line_stripped = line.rstrip('\n')
        line_stripped_and_splitted = line_stripped.split()
        row_tuples = [float(number_str) for number_str in line_stripped_and_splitted]
        contents.append(row_tuples)

print(contents)
~~~~
