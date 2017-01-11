#Sysclt Parameter tuning
net.ipv4.ip_forward:
  sysctl.present:
    - value: 0


net.ipv4.conf.all.accept_source_route:
  sysctl.present:
    - value: 0

net.ipv4.conf.lo.accept_source_route:
  sysctl.present:
    - value: 0

net.ipv4.conf.eth0.accept_source_route:
  sysctl.present:
    - value: 0

net.ipv4.conf.default.accept_source_route:
  sysctl.present:
    - value: 0

net.ipv4.conf.all.rp_filter:
  sysctl.present:
    - value: 1


net.ipv4.conf.lo.rp_filter:
  sysctl.present:
    - value: 1

net.ipv4.conf.default.rp_filter:
  sysctl.present:
    - value: 1

net.ipv4.eth0.lo.rp_filter:
  sysctl.present:
    - value: 1


net.ipv4.conf.all.accept_redirects :
  sysctl.present:
    - value: 0

net.ipv4.conf.lo.accept_redirects :
  sysctl.present:
    - value: 0

net.ipv4.conf.eth0.accept_redirects :
  sysctl.present:
    - value: 0

net.ipv4.conf.default.accept_redirects :
  sysctl.present:
    - value: 0

pv4.conf.all.log_martians:
  sysctl.present:
    - value: 0

pv4.conf.lo.log_martians:
  sysctl.present:
    - value: 0

pv4.conf.eth0.log_martians:
  sysctl.present:
    - value: 0

kernel.sysrq:
  sysctl.present:
    - value: 0

net.ipv4.tcp_fin_timeout:
  sysctl.present:
    - value: 15
net.ipv4.tcp_keepalive_time:
  sysctl.present:
    - value: 1800
net.ipv4.tcp_window_scaling:
  sysctl.present:
    - value: 0
net.ipv4.tcp_sack:
  sysctl.present:
    - value: 0
net.ipv4.tcp_timestamps:
  sysctl.present:
    - value: 0
net.ipv4.tcp_syncookies:
  sysctl.present:
    - value: 0
net.ipv4.icmp_echo_ignore_broadcasts:
  sysctl.present:
    - value: 1
net.ipv4.icmp_ignore_bogus_error_responses:
  sysctl.present:
    - value: 1
net.ipv4.conf.all.log_martians:
  sysctl.present:
    - value: 1
net.ipv4.tcp_max_syn_backlog:
  sysctl.present:
    - value: 1024
net.ipv4.ip_local_port_range:
  sysctl.present:
    - value: '16384 65536'


