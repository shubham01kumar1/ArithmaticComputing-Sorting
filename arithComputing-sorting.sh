#!/bin/bash -x

declare -A arith_Computation

read -p "Enter the value for a: " a
read -p "Enter the value for b: " b
read -p "Enter the value for c: " c

arith_Computation["a+b*c"]=$((a + b * c))
arith_Computation["a*b+c"]=$((a * b + c))
arith_Computation["c+a/b"]=$((c + a / b))
arith_Computation["a%b+c"]=$((a % b + c))
