From alpine

# Install basic debugging-tools, nginx & its bare-minimal-dependencies, , supervisor and remove the "ipv6-port-80" of nginx
RUN apk -U add curl tcpdump tcptraceroute lsof iperf nmap openssh-client nginx supervisor py2-pip postgresql-client bash gettext tzdata tar xz ca-certificates &&  apk upgrade && mkdir /run/nginx && sed -ri 's/listen \[\:\:\]\:80 default_server\;//g' /etc/nginx/conf.d/default.conf

COPY supervisord.conf /etc/supervisord.conf

CMD supervisord
