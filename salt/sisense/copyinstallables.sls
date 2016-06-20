#installables into host machine
copy_sisense:
  file.managed: 
    - name: D:/PMT/SisenseLatest.exe
    - source: salt://storage/Installer/Lib/SiSenseLatest.exe

copy_mapr_odbc:
   file.managed:
     - name: D:/PMT/MapRDrillODBC64.msi
     - source: salt://storage/Installer/Lib/MapRDrillODBC64.msi

#copy_SiSenseLatest V6.2.2.35.exe
copy_SiSenseLatest:
   file.managed:
     - name: D:/PMT/SiSenseLatestV6.2.2.35.exe
     - source: salt://storage/Installer/Lib/SiSenseLatestV6.2.2.35.exe
