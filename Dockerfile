From alpine

RUN apk -U add curl tcpdump lsof iperf nmap openssh-client nginx supervisor && \
  apk upgrade && \
  mkdir /var/log/supervisord

COPY supervisord.conf /etc/supervisord.conf

CMD supervisord
