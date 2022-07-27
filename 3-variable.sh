#!/usr/bin/bash

#declare variable
a=100

#print data in variable
echo $a
#or
echo ${a}

#arthematic substitution
data=$((3+5))

echo $data

#command substitution
DATE=$(date +%F)
echo today date is $DATE

# shell has its own pid  & own memory to store vars. shell called parent
# script also has its own pid  & own memory to store vars. script called child.
# to use shell vars in script we should mage parent-child relation using export command on shell