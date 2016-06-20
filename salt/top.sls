base:
  tomcat:
    - match: nodegroup
 
  'ansibleslave1':
    - mytomcat
  'INGBTCPIC5VWPRI':
    - sisense.copyInstallables
    - sisense.install
    - sisense.uninstall
    - sisense.deploy
    - sisense.undeploy
