If root install to ~/ci then host in container /var/host/root/ci:
```bash
:/var/host/root/ci# docker-compose ps
    Name                  Command                  State                            Ports                      
---------------------------------------------------------------------------------------------------------------
ci_jenkins_1   /sbin/tini -- /usr/local/b ...   Up (healthy)   0.0.0.0:50001->50000/tcp, 0.0.0.0:8081->8080/tcp
```