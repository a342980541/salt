#check if Tomcat is installed
check_tomcat_installed:
  cmd.run:
    - name: salt-call state.apply tomcat.install
    - onlyif: 'test ! -L /opt/apache-tomcat'

#copy wars to webapps folder
copy_wars:
  file.recurse:
    - name: /opt/apache-tomcat/webapps/
    - source: salt://storage/BackendInstaller/lib/PMTApps/WebApps/

start_tomcat:
  cmd.run:
    - name: /opt/apache-tomcat/bin/startup.sh


