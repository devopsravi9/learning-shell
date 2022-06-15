#! /usr/bin/bash

# to print message
#command : echo
#sytax : echo INPUT

echo hello world

# to print new lines
# syntax : echo -e "line1 \n line2"
echo -e "hello world. \nhow is the day"
# here -e enables backslash interpretation inside quotes.

#print tab space using \t
echo -e "hii \thello"

#print some colours
#syntax echo -e "\e[colm message \e[0m"
#\e - enable colour
# [colm - give colour input
#\e[om - disable colour
#    color        code           syntax
#  red             31        \e[31m
#  green           32        \e[32m
#  yellow          33        \e[33m
#  blue            34        \e[34m
#  magneta         35        \e[35m
#  cyan            36        \e[36m

echo -e "\e[31m hello world \e[0m"

