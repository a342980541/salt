#stop fusion service:
kill_fusion:
  cmd.run:
    - name: ps aux | grep -i fusion | awk {'print $2'} | xargs kill -9

#remove soft link:
delete_softlink:
  cmd.run:
    - name: rm -f /opt/fusion

#copy fusion from master
copy_fusion:
  file.managed:
  - name: /opt/fusion-{{ pillar['version']['fusion'] }}.tar.gz
  - source: salt://storage/BackendInstaller/lib/Logstash/fusion-{{ pillar['version']['fusion'] }}.tar.gz

#untar fusion
untar fusion:
  module.run:
    - name: archive.tar
    - options: -xf
    - tarfile: /opt/fusion-{{ pillar['version']['fusion'] }}.tar.gz
    - dest: /opt
#    - onlyif: [ ! -d /opt/fusion-{{ pillar['version']['fusion'] }} ]

#create shortcut
create_shortcut:
  cmd.run:
    - name: ln -s /opt/fusion-{{ pillar['version']['fusion'] }} /opt/fusion
