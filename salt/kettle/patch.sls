#copy kettle from master
copy_kettle:
  file.managed:
  - name: /opt/data-integration/plugins/pentaho-big-data-plugin/pentaho-big-data-plugin-{{ pillar['version']['kettle'] }}.jar
  - source: salt://storage/BackendInstaller/lib/Kettle/pentaho-big-data-plugin-{{ pillar['version']['kettle'] }}.jarfile
