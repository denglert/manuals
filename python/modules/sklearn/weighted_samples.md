# Working with weighted samples in `sklearn`

**References:**
- http://scikit-learn.org/stable/auto_examples/svm/plot_weighted_samples.html
- https://stackoverflow.com/questions/34389624/what-does-sample-weight-do-to-the-way-a-decisiontreeclassifier-works-in-skle
- https://stats.stackexchange.com/questions/173439/sample-weights-scaling-in-sklearn-svm-svc



Specify the weight with the `sample_weight` argument:

~~~~
clf_weights.fit(X, y, sample_weight=sample_weights)
~~~~
