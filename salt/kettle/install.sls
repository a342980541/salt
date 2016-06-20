#copy kettle from master
copy_kettle:
  file.managed:
  - name: /opt/pdi-ce-{{ pillar['version']['kettle'] }}.zip
  - source: salt://storage/BackendInstaller/lib/Kettle/pdi-ce-{{ pillar['version']['kettle'] }}.zip

#unzip pdi-ce
unzip pdi-ce:
  module.run:
    - name: archive.cmd_unzip
    - zip_file: /opt/pdi-ce-{{ pillar['version']['kettle'] }}.zip
    - dest: /opt

#create soft link
#create softlink:
#  cmd.run:
#    - name: ln -s /opt/pdi-ce-{{ pillar['version']['kettle'] }} /opt/pdi-ce
#    - onlyif: [ ! -L /opt/pdi-ce ]
