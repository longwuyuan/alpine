From alpine

RUN apk -U add curl tcpdump tcptraceroute lsof iperf nmap openssh-client nginx supervisor py2-pip postgresql-client bash gettext tzdata tar xz ca-certificates &&  apk upgrade && mkdir /run/nginx

COPY supervisord.conf /etc/supervisord.conf

CMD supervisord
