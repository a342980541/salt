#install log
Remove softlink:
  file.absent:
    - name: /opt/filebeat
uninstall filebeat:
  file.absent:
    - name: /opt/filebeat-{{ pillar['version']['filebeat'] }}
