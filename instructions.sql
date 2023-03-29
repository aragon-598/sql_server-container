--PASO 1 https://medium.com/@yunuseulucay/how-to-import-bak-data-in-ubuntu-456abb05bdfc
use master;

--PASO 2
RESTORE FILELISTONLY FROM DISK = '/var/opt/mssql/backup/AdventureWorks2019.bak';

--PASO 3
RESTORE DATABASE new_db
FROM DISK = '/var/opt/mssql/backup/AdventureWorks2019.bak' WITH FILE = 1,
MOVE 'AdventureWorks2017' TO '/var/opt/mssql/data/AdventureWorks2017.mdf',
MOVE 'AdventureWorks2017_log' TO '/var/opt/mssql/data/AdventureWorks2017_log.ldf';
