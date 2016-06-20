#UnInstall Sisense
Uninstall_sisense:
  cmd.run:
    - name: D:/PMT/SiSenseLatestV6.2.2.35.exe /q /uninstall
    - timeout: 1000

Check Sisense is present:
   file.exists:
    - name: C:/Program Files/Sisense/

wait till uninstllation:
  file.absent:
    - name: C:/Program Files/Sisense/
     


