# Troubleshooting Mathematica

Recommended to read:
[What are the most common pitfalls awaiting new users?][commont_pitfalls]



## Recursion depth of x exceeded during evaluation...

**Problem descrition:**

While [assigning][assignment] the relation
~~~~
Phi = (Phi_1, Phi_2)
~~~~
Mathematica cannot differentiate between the subscripts, and interprets this assignment as recursion
relation.

Take-away message: subscript notation in Mathematica sucks.

Refs:
- https://mathematica.stackexchange.com/questions/77624/recursion-problem
- https://mathematica.stackexchange.com/questions/119210/problem-storing-x-j-terms-in-variable-x/119216
- https://mathematica.stackexchange.com/questions/89024/what-role-to-sub-superscripts-play-in-mathematica/89028

[assignment]: http://reference.wolfram.com/language/guide/Assignments.html
[commont_pitfalls]: https://mathematica.stackexchange.com/questions/18393/what-are-the-most-common-pitfalls-awaiting-new-users
