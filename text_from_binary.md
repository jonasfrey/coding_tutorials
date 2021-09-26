# in the beginning 
people hadnt the information what typeset they have to use and brute forced the iso codes (latin, eu)


# create a text file 
```
echo "test this is a test \n line two and    tab" > test_text_file_written_by_echo.txt
```

# read text file byte by bite 

```
hexdump test_text_file_written_by_echo.txt
```
or
```
od -x test_text_file_written_by_echo.txt
```

# you can create a binary file with 
```
echo -n -e \\b00110000\\b00000000 > myfile.txt
```



```
echo -n -e \\x48\\x00\\x00\\x41\\x00\\x48\\x00\\x48 > myfile.txt
```


# bit, nibble, byte, word, doubleword, quadwo
|example|binary|n of bits|
|---:|---|---|
|0|bit|1|
|1010|nibble|4|
|10100101|byte|8|
|11001100 00110011|word|16|
|10010011 11100111 1100110011 10100101 10100101|double word|32|
|10010011 11100111 1100110011 10100101 10100101 10010011 11100111 1100110011 10100101 10100101|quadword|64|




# create a empty file and checkout its binary contents 
```bash
touch empty_file && od -x empty_file
```
# append content to the file and checkout contents
```bash
echo "A" >> empty_file && od -x empty_file
```
# "clear" content of file
```bash
echo "" > empty_file && od -x empty_file
```
# really clear content of file 
```bash
> empty_file && od -x empty_file
```