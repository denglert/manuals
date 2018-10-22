# Ensemble method in `sklearn`

**References:**
- http://scikit-learn.org/stable/modules/ensemble.html 


## `AdaBoost`


**References:**
- [AdaBoost paper][adaboost]




### Example(s)

~~~~
from sklearn.model_selection import cross_val_score
from sklearn.datasets import load_iris
from sklearn.ensemble import AdaBoostClassifier

iris = load_iris()
clf = AdaBoostClassifier(n_estimators=100)
scores = cross_val_score(clf, iris.data, iris.target, cv=5)
scores.mean()         
~~~~




[adaboost]: https://doi.org/10.1006/jcss.1997.1504
