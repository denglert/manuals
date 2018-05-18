# Conditional statements in Matlab


**References:**
- https://uk.mathworks.com/help/matlab/matlab_prog/conditional-statements.html


## `if`

~~~~
a = randi(100, 1);

if rem(a, 2) == 0
    disp('a is even')
    b = a/2;
end
~~~~

Alternate choices:

~~~~
if a < 30
    disp('small')
elseif a < 80
    disp('medium')
else
    disp('large')
end
~~~~

## `switch`

~~~~
switch dayString
   case 'Monday'
      disp('Start of the work week')
   case 'Tuesday'
      disp('Day 2')
   case 'Wednesday'
      disp('Day 3')
   case 'Thursday'
      disp('Day 4')
   case 'Friday'
      disp('Last day of the work week')
   otherwise
      disp('Weekend!')
end
~~~~
