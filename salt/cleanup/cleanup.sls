#delete gz files
Delete tar.gz:
  cmd.run:
    - name: rm -rf /opt/*.tar.gz

# delete zip files
Delete_zip:
  cmd.run:
    - name: rm -rf /opt/*.zip
