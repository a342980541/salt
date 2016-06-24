#copy ecube
copy_ecube:
  file.recurse:
    - name: D:/PMT/
    - source: salt://storage/Installer/Lib/PMTApps/Ecube/
   
#Build Ecube
#build_ecube:
#  cmd.run:
#    - name: C:/Program%20Files/Sisense/Prism/Psm.exe ecube build filename=D:/PMT/PMTDM.ecube mode=full serveraddress=localhost

#copy Sisense Custimization folder
copy_files:
  file.recurse:
    - name: C:/Program Files/Sisense/PrismWeb/
    - source: salt://storage/Installer/Lib/PMTCustomization/

#Reset IIS
restart iis:
  cmd.run:
    - name: iisreset

#copy Sisense Dash files
copy_dash_files:
  file.recurse:
    - name: D:/PMT/dash/
    - source: salt://storage/Installer/Lib/PMTApps/Dash/

#copy Sisense Dash import powershell script
copy_ps1_files:
  file.managed:
    - name: D:/PMT/DashfileDeployment.ps1
    - source: salt://storage/Installer/Bin/DashfileDeployment.ps1

#Import Dash files
dash_import:
  cmd.run:
    - name: powershell -f D:/PMT/DashfileDeployment.ps1 D:/PMT/dash/ vasanth_gowda005@gmail.com Sisense http://localhost:8083

