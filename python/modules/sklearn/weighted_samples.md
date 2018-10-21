# Working with weighted samples in `sklearn`

**References:**
- http://scikit-learn.org/stable/auto_examples/svm/plot_weighted_samples.html



Specify the weight with the `sample_weight` argument:

~~~~
clf_weights.fit(X, y, sample_weight=sample_weights)
~~~~
