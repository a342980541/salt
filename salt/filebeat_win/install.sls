#copy filebeat from master
copy_filebeat:
  file.managed:
  - name: D:/filebeat-{{ pillar['version']['filebeat_win'] }}-windows.zip
  - source: salt://storage/Installer/Lib/filebeat-{{ pillar['version']['filebeat_win'] }}-windows.zip

#unzip filebeat
unzip filebeat:
  cmd.run:
    - name: C:/tmp/Tools/unzip.exe -o D:/filebeat-{{ pillar['version']['filebeat_win'] }}-windows.zip -d D:/
#    - onlyif: if not exists D:/filebeat-{{ pillar['version']['filebeat_win'] }}-windows'

