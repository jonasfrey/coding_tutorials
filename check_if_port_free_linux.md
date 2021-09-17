# sudo lsof -i:{portnumber}
```bash
sudo lsof -i:3306
 ```
# output if not free
```
COMMAND     PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
docker-pr 11563 root    4u  IPv4 123921      0t0  TCP *:mysql (LISTEN)
docker-pr 11568 root    4u  IPv6 114055      0t0  TCP *:mysql (LISTEN)

```


# other approach
```bash
netstat -a | less | grep 80
```