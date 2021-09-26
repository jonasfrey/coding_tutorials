
# binaries/commands
```bash
#!/bin/bash 
# if you call for example 'echo' this is a binary file which is executable and also called a bash command
# many of those commands are stored in /etc/bin, for exapmle: 
# echo 
echo "hello you there"
# is the same as 
/bin/echo "hello you there"
# there is a command to list files , lets use it to show all binaries/commands in /bin/
/bin/ls /bin
```

# scope accessability envornment =?
```bash
#!/bin/bash 
# it would be to stressfull to always write /bin/echo "hello ..." or /bin/nano test_file.txt
# thats why (i think) every executable file in the /bin directory is automatically available by only the filename 
# in the global scope of the terminal 
# so you can call commands by : 
echo "test" 
# or
nano my_new_file.txt 
# and so on...
```
# create own executable bash file 
## create file 
```bash
sudo nano /bin/my_own_bash_file
```

## paste the following content into it 
```bash
#!/bin/bash
start_num=20
end_num=28
increment_num=2
echo "this is a unneccessary bash script which outputs numbers from $start_num to $end_num with an increment of $increment_num"
for ((i=start_num ; i<=end_num; i+=increment_num))
do
        echo $i
done
echo "done !"
echo "-------------------------"

echo "now checkout this little animation " 
width=11
height=11
back_char="-"
fore_char="#"
for ((t=0 ; t<=100; t+=1))
do 
tx=$((t%width))
ty=$((t%height))
echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
    for((y=0; y<=height; y++))
    do 
        line=""
        for((x=0; x<=width; x++))
        do 
            out=$back_char
            if [ $x -eq $tx ];then
                if [ $y -eq $ty ];
                then
                    out=$fore_char
                fi
            fi
            line+=$out
        done
        echo $line
    done
    sleep 0.02
done
echo "finished !"
echo "---------"
```

## make it executable 
 ```bash
#!/bin/bash 
sudo chmod +x /bin/my_own_bash_file
```

## call it 
 ```bash
#!/bin/bash 
#since it is in the /bin directory it is available globaly
my_own_bash_file
```


# arguments/parameters: binaries/commands with arguments
 ```bash
#!/bin/bash 
# a binary/command can accept arguments/parameters
# they are passed after the binary name 
/bin/ls -a
# or 
ls -a
```

# manual / help : commands help
 ```bash
#!/bin/bash 
# many binaries have some information about their function 
# luckly there is a command which can show this information about a binary 
#/bin/man 
# its in the env variables , you can call it so: 
man /bin/ls
# or 
man ls 
```

# loop classical for loop for i = ...
```bash
#!/bin/bash 
for ((i=0; i<=123; i++))
do
    echo "current i => $i"
done
```

# calculations with numbers / arithmetic with numbers

```bash
#!/bin/bash
echo "expr is a binary in /bin/expr" 
echo "you can use it by calling expr and pass the calculation" 
# Addition with a variable
result_number=$(expr 2 + 3) && echo $result_number
# Subtraction
result_number=$(expr 2 - 3) && echo $result_number
# Division
result_number=$(expr 6 / 3) && echo $result_number
# Float division will return only downrounded parsed integer
# 8 / 3 should be 2.666... but expr 8/3 returns 2 
result_number=$(expr 8 / 3) && echo $result_number
# Multiplication
# * has to be escaped by backslash \
result_number=$(expr 2 \* 3) && echo $result_number

```