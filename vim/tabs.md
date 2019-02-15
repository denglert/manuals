# Tabs in `vim`

Split current tab into two:

~~~
:tab split
~~~

To open a recently closed file (tab), since the file is still probably in the buffer you can just

~~~~
:ls          " get the buffer number
:tabe +Nbuf  " where N is the buffer number
~~~~

