

# TD-DNS

## Question :

### Retrouvez l'adresse ip du host `wiki.lab.local` avec la commande dig.

    vagrant@proxy:~$ dig wiki.lab.local
    
    ; <<>> DiG 9.10.3-P4-Debian <<>> wiki.lab.local
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NXDOMAIN, id: 45077
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1
    
    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 4096
    ;; QUESTION SECTION:
    ;wiki.lab.local.                        IN      A
    
    ;; AUTHORITY SECTION:
    lab.local.              3600    IN      SOA     ns1.lab.local. hostmaster.lab.local. 2018050122 28800 7200 604800 86400
    
    ;; Query time: 15 msec
    ;; SERVER: 192.168.33.21#53(192.168.33.21)
    ;; WHEN: Fri Oct 18 09:29:33 GMT 2019
    ;; MSG SIZE  rcvd: 94

L'adresse ip du host `wiki.lab.local` est : 192.168.33.21

### Connectez vous au host auth-1, quels sont les services réseaux qui sont en fonctionnement actuellement quels sont leur socket d'écoute ?

    [vagrant@auth-1 ~]$ sudo netstat -ltnp
    Active Internet connections (only servers)
    Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
    tcp        0      0 0.0.0.0:111             0.0.0.0:*               LISTEN      1/systemd
    tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      2384/sshd
    tcp        0      0 127.0.0.1:25            0.0.0.0:*               LISTEN      2751/master
    tcp6       0      0 :::111                  :::*                    LISTEN      1/systemd
    tcp6       0      0 :::22                   :::*                    LISTEN      2384/sshd
    tcp6       0      0 ::1:25                  :::*                    LISTEN      2751/master


### Connectez vous au host recursor-1, quels sont les services réseaux qui sont en fonctionnement actuellement quels sont leur socket d'écoute ?
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE3NTUzMDIzNjUsLTM0MzIxNDEzNF19
-->