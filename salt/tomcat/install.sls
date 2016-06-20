#copy Tomcat from master
copy_tomcat:
  file.managed:
  - name: /opt/apache-tomcat-{{ pillar['version']['tomcat'] }}.tar.gz
  - source: salt://storage/BackendInstaller/lib/Tomcat/apache-tomcat-{{ pillar['version']['tomcat'] }}.tar.gz 

#untar Tomcat
untar tomcat:
  module.run:
    - name: archive.tar
    - options: -xf
    - tarfile: /opt/apache-tomcat-{{ pillar['version']['tomcat'] }}.tar.gz
    - dest: /opt

#create soft link
create softlink:
   cmd.run:
     - name: ln -s /opt/apache-tomcat-{{ pillar['version']['tomcat'] }} /opt/apache-tomcat

 
