#!/bin/bash -x

read -p "Enter the value for a: " a
read -p "Enter the value for b: " b
read -p "Enter the value for c: " c

result1=$(($a+$b*$c))
echo $result1
