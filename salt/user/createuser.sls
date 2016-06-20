{{pillar['users']['username'] }}:
  user.present:
    - fullname: {{ pillar['users']['user-fullname'] }} 
    - uid: {{ pillar['users']['uuuid'] }}
    - home: /home/{{ pillar['users']['username'] }} 
