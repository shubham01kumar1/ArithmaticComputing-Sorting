#!/bin/bash -x

read -p "Enter the value for a: " a
read -p "Enter the value for b: " b
read -p "Enter the value for c: " c

arith_Computation_1=$((a + b * c))
arith_Computation_2=$((a * b + c))
arith_Computation_3=$((c + a / b))
arith_computation_4=$((a % b + c))
