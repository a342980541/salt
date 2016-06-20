#uninstall Tomcat
uninstall tomcat:
  file.absent:
    - name: /opt/apache-tomcat-{{ pillar['version']['tomcat'] }}

#remove softlink
remove softlink:
  file.absent:
    - name: /opt/apache-tomcat
