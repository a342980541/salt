#undeploy the war files 
shutdown_tomcat:
  cmd.run:
    - name: /opt/apache-tomcat/bin/shutdown.sh

delete wars:
  cmd.run:
    - name: rm -f /opt/apache-tomcat/webapps/*.war

start tomcat:
  cmd.run:
    - name: /opt/apache-tomcat/bin/startup.sh

