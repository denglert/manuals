# Performance metrics in sklearn

**References:**
- http://scikit-learn.org/stable/modules/classes.html#module-sklearn.metrics
- http://scikit-learn.org/stable/modules/model_evaluation.html#model-evaluation



~~~~
~~~~


## Classification report

**References:**
- http://scikit-learn.org/stable/modules/generated/sklearn.metrics.classification_report.html#sklearn.metrics.classification_report

Build a text report showing the main classification metrics.

Displayed metrics:
- precision
- recall
- f1-score
- support
- area under ROC curve


### Example(s)


~~~~
from sklearn.metrics import classification_report
report_str = classification_report(y_test, y_predicted, target_names=["background", "signal"])
print(report_str)
~~~~

## ROC curve

**References:**
- http://scikit-learn.org/stable/modules/generated/sklearn.metrics.roc_curve.html#sklearn.metrics.roc_curve


Compute Receiver operating characteristic (ROC).


### Examples(s)

~~~~
from sklearn.metrics import roc_curve, auc

decisions = bdt.decision_function(X_test)

# Compute ROC curve and area under the curve
fpr, tpr, thresholds = roc_curve(y_test, decisions)
roc_auc = auc(fpr, tpr)

plt.plot(fpr, tpr, lw=1, label='ROC (area = %0.2f)'%(roc_auc))

plt.plot([0, 1], [0, 1], '--', color=(0.6, 0.6, 0.6), label='Luck')
plt.xlim([-0.05, 1.05])
plt.ylim([-0.05, 1.05])
plt.xlabel('False Positive Rate')
plt.ylabel('True Positive Rate')
plt.title('Receiver operating characteristic')
plt.legend(loc="lower right")
plt.grid()
plt.show()
~~~~
