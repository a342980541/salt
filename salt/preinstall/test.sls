#testgoogle:
#  firewall.check:
#    - name: 'google.com'
#    - port: 80
#    - proto: 'tcp'

java7_ppa:
  pkgrepo.managed:
    - ppa: wedupd8team/java
    - require_in:
      - pkg: jdk7
