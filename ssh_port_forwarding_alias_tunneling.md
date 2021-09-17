# create ssh tunnel

## ssh -N -L 3336:127.0.0.1:3306 [USER]@[SERVER_IP]
for example, with the following you can connect to mysql on the local machine on port 22222

```
ssh -N -L 22222:127.0.0.1:3306 jf18j492@nemesis.unibe.ch
```