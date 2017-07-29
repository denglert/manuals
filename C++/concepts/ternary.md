# Ternary operator

~~~~
label.frame = (inPseudoEditMode) ? kLabelIndentedRect : kLabelRect;
~~~~

is equivalent to:

~~~
if(inPseudoEditMode) {
 label.frame = kLabelIndentedRect;
} else {
 label.frame = kLabelRect;
}
~~~~
