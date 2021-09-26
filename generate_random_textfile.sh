#!/bin/bash

characters=100
# for i in {1..$characters}
for ((c=0; c<=$characters; c++))
do
    random_min=0
    random_max=255
    random_number=$(($random_min + $RANDOM % $random_max))
    number_base_16_exp_1_times_1=$((16 ** 1))
    number_base_16_exp_1=$(expr random_number / number_base_16_exp_1_times_1)
    echo "Welcome $random_number times"
    echo "$number_base_16_exp_1"
done
