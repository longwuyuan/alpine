# Base-Image for microservices (longwuyuan/alpine)
- Alpine with curl tcpdump tcptraceroute lsof iperf nmap openssh-client py2-pip postgresql-client bash gettext tzdata tar xz ca-certificates.
- But base-image because also has nginx & supervisord. So choices are ;
  - Copy your app to /usr/share/nginx/html that uses default.conf & index.html
  - Use "FROM longwuyuan/alpine" in your dockerfile and then create your own nginx vhost file + mkdir + "COPY"
  - Use "FROM longwuyuan/alpine" in your dockerfile and then use default.conf published site for healthcheck and add multiple custom nginx-vhost files for multiple services like analytics/log/whatever

# Combine with prometheus-exporter in your container-orchestration
