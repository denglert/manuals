#!/usr/bin/env bash

foo=10
x=foo

y='$'$x

echo "\$x: $x"
echo "\$y: $y"
echo "\$foo: $foo"

echo "After y='$'\$x"

eval y='$'$x
echo "\$y: $y"
