#kill if already running
kill_Sisense:
  cmd.run:
    - name: taskkill /F /im Sisenselatest.exe

#Delete Folder if exist
delete_folder:
  file.absent:
    - name: C:/Program Files/Sisense/
    
#Install Sisense
install_sisense:
  cmd.run:
    - name: D:/PMT/SiSenseLatestV6.2.2.35.exe -q -username=vasanth_gowda006@gmail.com -password=Sisense -webport=8083 -webname=localhost -nosamples
    - timeout: 2000

#install odbc
install_mapr_odbc: 
  cmd.run:
    - name: msiexec.exe /i D:/PMT/MapRDrillODBC64.msi /qn
    - timeout: 500
