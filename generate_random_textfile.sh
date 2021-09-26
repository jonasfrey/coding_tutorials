#!/bin/bash
characters=500
random_content=""
# for i in {1..$characters}
for ((c=0; c<=$characters; c++))
do
    random_min=128
    random_max=255
    random_number=$(($random_min + $RANDOM % $random_max))
    # number_base_16_exp_1_times_1=$((16 ** 1))
    # number_base_16_exp_1=$(expr random_number / number_base_16_exp_1_times_1)
    random_number_in_hex="$(printf '%x\n' $random_number)"
    # echo "Welcome $random_number times"
    # echo "$number_base_16_exp_1"
    random_content+="\x$random_number_in_hex"
done
echo $random_content

echo -n -e $random_content > generate_ranom_textfile_textfile.txt