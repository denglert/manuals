# Model selection



## Splitter

**References:**
- http://scikit-learn.org/stable/modules/classes.html#module-sklearn.model_selection

### Train test split

- http://scikit-learn.org/stable/modules/generated/sklearn.model_selection.train_test_split.html

~~~~
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.33, random_state=42)
~~~~


### Cross-validation

- http://scikit-learn.org/stable/modules/cross_validation.html
