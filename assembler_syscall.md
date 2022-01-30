# 

- rax: 1 = sys_write 
- rdi: 1 == standard output 
- rsi : Adress of the string to be written 
- rdx: length of the string (number of bytes


```
mov rax, 1
mov rdi , 1 
mov rsi , EatMsg 
mov rdx, EatLen 
syscall 
```


# exit program 

```
mov rax, 60 ; code 
mov rdi, 0  ; return a code of zero 
syscall     ; make kernel call 
```