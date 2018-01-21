# Base-Image for microservices (longwuyuan/alpine)
- Alpine with openrc curl tcpdump tcptraceroute lsof iperf nmap nginx
- Nginx listening on port 11111.
- Curl to container and body "1" or HTTP-Response 200 for simple healthcheck ;

```
curl https://<ipaddress or name>:11111 ;
```
