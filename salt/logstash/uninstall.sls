#install log
Remove softlink:
  file.absent:
    - name: /opt/logstash
uninstall logstash:
  file.absent:
    - name: /opt/logstash-{{ pillar['version']['logstash'] }}
