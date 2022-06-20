#!/usr/bin/bash

#declaration of a function
abc () {
  echo ABC function is called
  echo a=$a
  b=20
}

#declaring another function
function xyz () {
  echo XYZ function is called
  c=30
}

#main program ---------
a=10
#calling function
abc
echo b=$b
echo c=$c