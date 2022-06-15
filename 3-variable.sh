#!/usr/bin/bash

#declare variable
a=100

#print data in variable
echo $a
#or
echo ${a}

#arthematic substitution
data= $((3+5))

echo $data

#command substitution
DATE = $(date +%F)
echo today date is $DATE