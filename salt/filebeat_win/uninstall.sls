uninstall filebeat:
  file.absent:
    - name: D:/filebeat-{{ pillar['version']['kettle'] }}-windows
