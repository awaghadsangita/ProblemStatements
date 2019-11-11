#!/bin/bash -x

read -p "Enter the value for a: " a
read -p "Enter the value for b: " b
read -p "Enter the value for c: " c

declare -A resultDictionary
resultDictionary["a+b*c"]=$(($a+$b*$c))
resultDictionary["c+a/b"]=$(($c+$a/$b))

