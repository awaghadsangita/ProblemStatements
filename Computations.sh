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
result4=$(($a*$b+$c))
declare -A resultDictionary
resultDictionary["a+b*c"]=$result1
resultDictionary["c+a/b"]=$result2
resultDictionary["a%b+c"]=$result3
resultDictionary["a*b+c"]=$result4
echo "Result From Dictionary :" ${resultDictionary[@]}

couter=0
resultArray[((counter++))]=${resultDictionary["a+b*c"]}
resultArray[((counter++))]=${resultDictionary["c+a/b"]}
resultArray[((counter++))]=${resultDictionary["a%b+c"]}
resultArray[((counter++))]=${resultDictionary["a*b+c"]}
echo "Result From Array :"${resultArray[@]}

function sortDescending()
{
	resultArray=$1;
	for ((i = 0; i<3; i++)) 
	do
      
    		for ((j = i; j<4-i; j++)) 
    		do
      
        		if [ ${resultArray[j]} -lt ${resultArray[$((j+1))]} ]
        		then
            		# swap 
            			tmp=${resultArray[$j]} 
            			resultArray[$j]=${resultArray[$((j+1))]}   
            			resultArray[$((j+1))]=$tmp 
        		fi
    		done
	done
	echo ${resultArray[@]}
  
}

echo "Sorted Array in Descending Order :"$( sortDescending $resultArray )
function sortAscending()
{
	resultArray=$1;
	for ((i = 0; i<3; i++)) 
	do
      
    		for ((j = i; j<4-i; j++)) 
    		do
      
        		if [ ${resultArray[j]} -gt ${resultArray[$((j+1))]} ]
        		then
            		# swap 
            			tmp=${resultArray[$j]} 
            			resultArray[$j]=${resultArray[$((j+1))]}   
            			resultArray[$((j+1))]=$tmp 
        		fi
    		done
	done
	echo ${resultArray[@]}
  
}

echo "Sorted Array in Ascending Order :"$( sortAscending $resultArray )
