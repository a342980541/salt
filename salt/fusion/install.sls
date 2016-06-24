#llar['version']['fusion'] }} copy fusion from master
copy_fusion:
  file.managed:
  - name: /opt/fusion-{{ pillar['version']['fusion'] }}.tar.gz
  - source: salt://storage/BackendInstaller/lib/SearchEngine/fusion-{{ pillar['version']['fusion'] }}.tar.gz

#untar fusion
untar fusion:
  module.run:
    - name: archive.tar
    - options: -xf
    - tarfile: /opt/fusion-{{ pillar['version']['fusion'] }}.tar.gz
    - dest: /opt
    - onlyif: 'test ! -d /opt/fusion-{{ pillar['version']['fusion'] }} '
    - mode: {{ pillar['users']['mode'] }} 
    - user: {{ pillar['users']['username'] }} 
    - group: {{ pillar['users']['groupname'] }}

#create soft link
create softlink:
  cmd.run:
    - name: ln -s /opt/fusion-{{ pillar['version']['fusion'] }} /opt/fusion
    - onlyif: 'test ! -L /opt/fusion'
