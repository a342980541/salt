#copy views to Views folder
copy_views:
  file.recurse:
    - name: /opt/Views
    - source: salt://storage/BackendInstaller/lib/PMTApps/ETL/Views/

#copy kjb, ktr files
copy_kettle:
  file.recurse:
    - name: /opt/ktr
    - source: salt://storage/BackendInstaller/lib/PMTApps/ETL/

#copy master data files
copy_masterdata:
  file.recurse:
    - name: /opt/masterdata
    - source: salt://storage/BackendInstaller/lib/PMTApps/ETL/master_data/

#copy data connector files
copy_dataconnector:
  file.recurse:
    - name: /opt/Data-Connector
    - source: salt://storage/BackendInstaller/lib/PMTApps/Data-Connector/
