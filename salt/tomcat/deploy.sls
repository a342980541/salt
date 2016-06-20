#copy wars to webapps folder
copy_wars:
  file.recurse:
    - name: /opt/apache-tomcat/webapps/
    - source: salt://storage/BackendInstaller/lib/PMTApps/WebApps/

start_tomcat:
  cmd.run:
    - name: /opt/apache-tomcat/bin/startup.sh


