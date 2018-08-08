# Syntax `R`

## Loops

### for loop

~~~~
for (variable in sequence){
    expr
}
~~~~


Example:

~~~~
for (i in 1:4){
    j <- i + 10
    print(j)
}
~~~~

### while loop

~~~~
while (condition){
    expr
}
~~~~


Example:

~~~~
while (i < 5){
    print(i)
    i <- i + 1
}
~~~~


--------------------------------------------------------------------------


## Function

~~~~
function_name <- function(var){
    expr...
    return(variable)
}
~~~~

--------------------------------------------------------------------------

## Conditionals

~~~~
if (condition1){
    expr1
else if (condition2){
    expr2
} else {
    expr3
}
~~~~
