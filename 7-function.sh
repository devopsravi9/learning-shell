#!/usr/bin/bash

#declaration of a function
abc () {
  echo ABC function is called
  echo a=$a
  b=20
  echo first arguement in function = $1
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
echo first arguement in main program= $1

