#stop tomcat service
kill_tomcat:
  cmd.run:
    - name: ps aux | grep -i apache-tomcat | awk {'print $2'} | xargs kill -9
#   - onlyif: [ ps aux | grep -i apache-tomcat | awk {'print $2'} != null ]

#remove soft link:
delete_softlink:
  cmd.run:
    - name: rm -f /opt/apache-tomcat
#    - onlyif: [ -L /opt/apache-tomcat ]

#copy tomcat from master
copy_tomcat:
  file.managed:
    - name: /opt/apache-tomcat-{{ pillar['version']['tomcat'] }}.tar.gz
    - source: salt://storage/BackendInstaller/lib/Tomcat/apache-tomcat-{{ pillar['version']['tomcat'] }}.tar.gz

#untar tomcat
untar tomcat:
  module.run:
    - name: archive.tar
    - options: -xf
    - tarfile: /opt/apache-tomcat-{{ pillar['version']['tomcat'] }}.tar.gz
    - dest: /opt
#    - onlyif: [  -d /opt/apache-tomcat-{{ pillar['version']['tomcat'] }} ]

#create shortcut
create_shortcut:
  cmd.run:
    - name: ln -s /opt/apache-tomcat-{{ pillar['version']['tomcat'] }} /opt/apache-tomcat
#    - onlyif: [  -L /opt/apache-tomcat ]
