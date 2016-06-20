#stop logstash service:
kill_logstash:
  cmd.run:
    - name: ps aux | grep -i logstash | awk {'print $2'} | xargs kill -9

#remove soft link:
delete_softlink:
  cmd.run:
    - name: rm -f /opt/logstash

#copy logstash from master
copy_logstash:
  file.managed:
  - name: /opt/logstash-{{ pillar['version']['logstash'] }}.tar.gz
  - source: salt://storage/BackendInstaller/lib/Logstash/logstash-{{ pillar['version']['logstash'] }}.tar.gz

#untar logstash
untar logstash:
  module.run:
    - name: archive.tar
    - options: -xf
    - tarfile: /opt/logstash-{{ pillar['version']['logstash'] }}.tar.gz
    - dest: /opt
#    - onlyif: [ ! -d /opt/logstash-{{ pillar['version']['logstash'] }} ]

#create shortcut
create_shortcut:
  cmd.run:
    - name: ln -s /opt/logstash-{{ pillar['version']['logstash'] }} /opt/logstash
