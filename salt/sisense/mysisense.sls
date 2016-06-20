# Copy unzipper to remote location (C:/tmp/Tools/unzip.exe)
#copy_unzipper:
#  file.managed:
#    - name: C:/tmp/Tools/unzip.exe
#    - source: salt://storage/unzip.exe
#    - makedirs: True

#Download Zip from Artifactory
#download_zip:
#  file.managed:
#    - name: C:/tmp/PMT-1.0.801.26.zip
#    - source: http://161.85.108.8:8081/artifactory/RS_Dev/RS/PMT_Alpha/1.0.801.26/PMT-1.0.801.26.zip
#    - source_hash: md5=53ed39523e7e48cd72bef30d36dd5686

# Extract the installer.zip only if C:/tmp/build/testfolder/testfile.txt not exist.
#extract_archive:
#  cmd.run:
#    - name: 7z x C:/tmp/PMT-1.0.801.26.zip -oC:/tmp/build/PMT-1.0.801.26/

#UnInstall Sisense
#Uninstall_sisense:
#  cmd.run:
#    - name: C:\tmp\build\PMT-1.0.801.26\Installer\Lib\SiSenseLatest.exe /q /uninstall

#Install Sisense#Install Sisense
install_sisense:
  cmd.run:
    - name: C:/tmp/build/PMT-1.0.801.26/Installer/Lib/SiSenseLatest.exe -q -username=vasanth_gowda005@gmail.com -password=Sisense -webport=8084 -webname=localhost -nosamples

#Build Ecube
#build_ecube:
#  cmd.run:
#    - name: C:/Program%20Files/Sisense/Prism/Psm.exe ecube build filename=C:/tmp/build/PMT-1.0.801.26/Installer/Lib/PMTApps/Ecube/elastic%20cube/PMTDM.ecube mode=full serveraddress=localhost

#delete folder
delete folder:
  file.absent:
    - name: C:/Program Files/Sisense/PrismWeb/client/

#copy Sisense Custimization folder
#copy_files:
#  file.recurse:
#    - name: C:/Program Files/Sisense/PrismWeb/
#    - source: salt://storage/Installer/Lib/PMTCustomization/

#copy Sisense Dash files
#copy_dash_files:
#  file.recurse:
#    - name: D:/PMT/dash/
#    - source: salt://storage/Installer/Lib/PMTApps/Dash/

#copy Sisense Dash import powershell script
#copy_ps1_files:
#  file.managed:
#    - name: D:/PMT/DashfileDeployment.ps1
#    - source: salt://storage/Installer/Bin/DashfileDeployment.ps1

#Import Dash files
#dash_import:
#  cmd.run:
#    - name: powershell -f D:/PMT/DashfileDeployment.ps1 D:/PMT/dash/ vasanth_gowda004@gmail.com Sisense http://localhost:8084
