From alpine

RUN apk -U update && \
  apk upgrade && \
  apk add curl tcpdump lsof iperf nmap openssh-client