set_run_level:
  file.replace:
    - name: /etc/inittab
    - pattern: 'id:[0-9]*:initdefault:'
    - repl: 'id:3:initdefault:'
    - count: 1
    - append_if_not_found: True

install_packages:
  pkg.installed:
    - pkgs:
      - ntp
      - network
      - sshd
      - syslog
      - auditd
      - httpd
      - acpid
      - cpuspeed
      - crond
      - Atd
      - anacron
      - irqbalance
      - iptables
    - service.running:
      - enable: True


{%for u_mask in ['/etc/login.defs','/etc/profile']%}
{{u_mask}}:
  file.replace:
    - pattern: 'umask\s*[0-9]+[0-9]+[0-9]*'
    - repl: 'umask 027'
    - append_if_not_found: True
{%endfor%}

password_min_len:
  file.replace:
    - name: /etc/login.defs
    - pattern: 'PASS_MIN_LEN\s*[0-9]+'
    - repl: 'PASS_MIN_LEN   8'
    - append_if_not_found: True


#User account to be locked after 90 days of inactivity
/etc/default/useradd:
  file.replace:
    - pattern: INACTIVE=[0-9][0-9]*
    - repl: 'INACTIVE=90'
    - append_if_not_found: True



