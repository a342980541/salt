#copy filebeat from master
copy_filebeat:
  file.managed:
  - name: /opt/filebeat-{{ pillar['version']['filebeat'] }}.tar.gz
  - source: salt://storage/BackendInstaller/lib/Logstash/filebeat-{{ pillar['version']['filebeat'] }}.tar.gz

#untar filebeat
untar filebeat:
  module.run:
    - name: archive.tar
    - options: -xf
    - tarfile: /opt/filebeat-{{ pillar['version']['filebeat'] }}.tar.gz
    - dest: /opt

#create soft link
create softlink:
  cmd.run:
    - name: ln -s /opt/filebeat-{{ pillar['version']['filebeat'] }} /opt/filebeat
