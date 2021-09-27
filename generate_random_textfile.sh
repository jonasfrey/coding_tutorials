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


filename_256bytes="256bytes.txt"
echo "generate $filename_256bytes"

characters=256
#first three bytes are BOM => byte order mark 
BOM="\xef\xbb\xbf"
content=""
# for i in {1..$characters}
for ((c=0; c<=$characters; c++))
do
    num_in_hex="$(printf '%x\n' $c)"
    # echo "Welcome $random_number times"
    # echo "$number_base_16_exp_1"
    content+="\x$num_in_hex"
done
echo $content

echo -n -e $BOM$content > "256_bytes_with_bom_ef_bb_bf.txt"

echo -n -e $content > "256_bytes_no_bom.txt"