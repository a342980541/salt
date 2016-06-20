{{ pillar['users']['groupname'] }}:
  group.present:
    - gid: {{ pillar['users']['gguid'] }}
    - system: True
    - addusers:
        - {{ pillar['users']['username'] }}
