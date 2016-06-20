#extract
untar:
  archive.extracted:
    - name: /opt/
    - source: salt://storage/BackendInstaller/lib/Tomcat/apache-tomcat-7.0.68.tar.gz
    - source_hash: md5=94688679d5f37499d1bd1a65eb9540e7
    - archive_format: tar
    - if_missing: /opt/apache-tomcat-7.0.68/

copy_wars:
  file.recurse:
    - name: /opt/apache-tomcat-7.0.68/webapps/
    - source: salt://storage/BackendInstaller/lib/PMTApps/WebApps/

start_tomcat:
  cmd.run:
    - name: /opt/apache-tomcat-7.0.68/bin/startup.sh

shutdown tomcat:
  cmd.run:
    - name: /opt/apache-tomcat-7.0.68/bin/shutdown.sh
