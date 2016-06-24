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
    - onlyif: 'test ! -d /opt/filebeat'
#start filebeat
#start filebeat:
#   cmd.run:
#     - name: nohup /opt/filebeat/filebeat -e -c /opt/filebeat/$1 -d "publish"
#     - onlyif: 'test ($(ps -ef | grep -wc filebeat) -eq 0 )'
