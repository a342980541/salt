jenkins:
  tomcat.undeployed:
    - name: /ran
    - require:
      - service: application-service
