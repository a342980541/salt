#llar['version']['logstash'] }} copy logstash from master
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
    - onlyif: 'test ! -d /opt/logstash-{{ pillar['version']['logstash'] }} '
    - mode: {{ pillar['users']['mode'] }} 
    - user: {{ pillar['users']['username'] }} 
    - group: {{ pillar['users']['groupname'] }}

#create soft link
create softlink:
  cmd.run:
    - name: ln -s /opt/logstash-{{ pillar['version']['logstash'] }} /opt/logstash
    - onlyif: 'test ! -L /opt/logstash'
