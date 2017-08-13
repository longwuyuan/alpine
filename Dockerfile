From alpine

RUN apk -U add curl tcpdump lsof iperf nmap openssh-client nginx supervisor && \
  apk upgrade

COPY supervisord.conf /etc/supervisord.conf

CMD supervisord
