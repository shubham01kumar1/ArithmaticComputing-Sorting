#!/bin/bash -x

declare -A arith_Computation
declare -a result_Array
declare -a asc_SortedResult

read -p "Enter the value for a: " a
read -p "Enter the value for b: " b
read -p "Enter the value for c: " c

function dsc_Sorting() {
arr=("$@")
len=${#arr[@]}
for ((i=0; i<$len; i++))
do
    flag=0
    for((j=0; j<$len-$i-1; j++))
    do
        if [ ${arr[$j]} -lt ${arr[$((j+1))]} ]
        then
            temp=${arr[$j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
            flag=1
        fi
    done
	if [ $flag -eq 0 ]
    then
        break
    fi
done
echo ${arr[@]}
}

arith_Computation["a+b*c"]=$((a + b * c))
arith_Computation["a*b+c"]=$((a * b + c))
arith_Computation["c+a/b"]=$((c + a / b))
arith_Computation["a%b+c"]=$((a % b + c))

counter=0
for value in ${arith_Computation[@]}
do
	result_Array[((counter++))]=$value
done

dsc_SortedResult=($(dsc_Sorting "${result_Array[@]}"))

len=${#dsc_SortedResult[@]}
for((i=0;i<len;i++))
do
	asc_SortedResult[i]=${dsc_SortedResult[$len-$i-1]}
done
