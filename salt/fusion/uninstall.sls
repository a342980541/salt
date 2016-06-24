#install log
Remove softlink:
  file.absent:
    - name: /opt/fusion
uninstall fusion:
  file.absent:
    - name: /opt/fusion-{{ pillar['version']['fusion'] }}
