From nginx:stable-alpine

# Install basic debugging-tools, nginx & its bare-minimal-dependencies, , supervisor and remove the "ipv6-port-80" of nginx
RUN apk -U add curl tcpdump tcptraceroute lsof iperf nmap openssh-client supervisor py2-pip postgresql-client bash &&  apk upgrade 

COPY supervisord.conf /etc/supervisord.conf

ONBUILD RUN apk update

CMD supervisord
