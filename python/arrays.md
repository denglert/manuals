# Tricks for array manipulation 

#### Calculate the average of two consecutive numbers in an array

~~~~
avg = [(a + b) / 2 for a, b in zip( iter(data), iter(data[1:]) )]
~~~~

Useful for getting the centre of the bins from bin edges, eg.:

~~~~
h, h_e = np.histogram(data, bins=10)
x = [(a + b) / 2 for a, b in zip( iter(h_e), iter(h_e[1:]) )]
~~~~

Source:
http://stackoverflow.com/questions/20527563/average-of-two-consecutive-elements-in-the-list-in-python
