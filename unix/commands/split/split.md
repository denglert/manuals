# `split`

Splitting and input file:

~~~~
split --suffix-length=n --numeric_suffixes <input_file> <output_predix>
~~~~

Pipeing to `split`:

~~~~
split --suffix-length=n --numeric_suffixes - <output_prefix>
~~~~

## Examples:

~~~~
tail --lines=+2 ${INPUT_DATA} | split --suffix-length=3 --lines=${nPtsPerJob} --numeric-suffixes - ${ROOT_DIR}/jobs/${TAG}/split_
~~~~
