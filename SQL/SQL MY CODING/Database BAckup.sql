--The SQL BACKUP DATABASE Statement
--The BACKUP DATABASE statement is used in SQL Server to create a full back up of an existing SQL database.

Syntax
BACKUP DATABASE databasename
TO DISK = 'filepath';

--Sql assign DAtaBAse
Backup Database Sqlassign
To Disk = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\Sqlassign.bak';

--SQL Learning Database
Backup Database Sqlassign
To Disk = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\Learning.bak';
----------------------------------------------

--The SQL BACKUP WITH DIFFERENTIAL Statement
--A differential back up only backs up the parts of the database that have changed since the last full database backup.

Syntax
BACKUP DATABASE databasename
TO DISK = 'filepath'
WITH DIFFERENTIAL;

----------------------------------------------