From alpine

RUN apk -U apk add curl tcpdump lsof iperf nmap openssh-client nginx && \
  apk upgrade

COPY supervisord.conf /etc/supervisord.conf

CMD supervisord
