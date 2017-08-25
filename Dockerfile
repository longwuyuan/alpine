From alpine

RUN apk -U add curl tcpdump tcptraceroute lsof iperf nmap openssh-client nginx supervisor nfs-utils py2-pip elixir postgresql-client && \
  apk upgrade && \
  mkdir /run/nginx

COPY supervisord.conf /etc/supervisord.conf

CMD supervisord
