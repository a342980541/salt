find replace:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: net.ipv4.tcp_retries2=([\d]*)
    - repl: net.ipv4.tcp_retries2=5
    - append_if_not_found: true
    - backup: '.bak'
