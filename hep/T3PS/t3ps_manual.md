# T3PS Manuals

**Usage:**

~~~~
t3ps --mode <mode> -o <output_folder> <config.scan>
~~~~

~~~~
t3ps --mode mcmc -o ./results/new config123.scan
~~~~

**Modes:**

~~~~
- scan
- mcmc
- optimize
- explorer
- worker
- test
~~~~

## T3PS internal variables

### Parameters

`pars` - parameter variables in which that scan is done

Parameter declaration:

`par_names = par1`

Parameter definition:

`par_par1 = 32.1`

### Variables

Variable declaration:

`var_names = var1`

Variable definition:

`var = par1*par1`

### Data variables


## Scan configuration file


~~~~
[setup]
point_processor = processors/SimpleProcessor.py
template = QuickStart.function

[SimpleProcessor]
# do a scan with the `basic calculator' 
#  with basic mathematical functions
program = bc --mathlib

[parameter_space]
# - two parameters called x and y
par_names = x, y
# - define each parameter to take 100 different 
# - values going from -1 to 1
par_x = interval(-1, 1) with count = 100
par_y = interval(-1, 1) with count = 100
~~~~

## processor/SimpleProcess.py

arguments:
* Stores the cmd that is run
* Relevant lines: 90-100

~~~~
def main(template_file, pars, vars):
~~~~


~~~~
def main(template_file, pars, vars):
    """Run requested command and return list of result values."""
    print('### --- Inside SimpleProcessor.main --- ')

    global arguments
    global timeout
    global timelimit
    global formula_eval
    global data_fields_code
    # ('arguments', ['/scratch/de3u14/2HDM/T3PS_scan/2HDM/bin/test'])
    # ('timeout', 10)
    # ('timelimit', <function TimeLimit at 0x7fd40c7d0e60>)
    # ('formula_eval', <function formula_eval at 0x7fd40c7e1d70>)
    # ('data_fields_code', None)

    with open(os.devnull) as devnull, timelimit(timeout):
        output = subprocess.check_output(
            arguments + ([template_file] if template_file else []),
            stdin=devnull,
            stderr=subprocess.STDOUT
        )
    # group 0 is the full number match
    # make sure it stays that way when changing number_pattern!
    all_numbers = [float(x[0]) for x in re.findall(number_pattern, output)]

    if not data_fields_code:
        return all_numbers

    data = formula_eval(
        data_fields_code,
        pars,
        vars,
        values=all_numbers
    )

    print('data', data)

    if is_listlike(data):
        print('data', data)
        return list(data)
    else:
        return [data]
~~~~

Note: here `template_file` is the contents to the substituted template file
