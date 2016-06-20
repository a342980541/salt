{{pillar['users']['username'] }}:
  user.absent:
    - name: {{ pillar['users']['username'] }}

