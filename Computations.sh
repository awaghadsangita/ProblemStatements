#!/bin/bash -x

read -p "Enter the value for a: " a
read -p "Enter the value for b: " b
read -p "Enter the value for c: " c

result1=$(($a+$b*$c))
echo $result1
result2=$(($c+$a/$b))
echo $result2
result3=$(($a%$b+$c))
echo $result3

declare -A resultDictionary
resultDictionary["a+b*c"]=$result1
resultDictionary["c+a/b"]=$result2
resultDictionary["a%b+c"]=$result3
echo "Result From Dictionary :" ${resultDictionary[@]}
