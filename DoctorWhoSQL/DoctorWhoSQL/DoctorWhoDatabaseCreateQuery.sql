DECLARE @DatabaseName nvarchar(50)
SET @DatabaseName = 'DoctorWho'

DECLARE @SQL varchar(max)

SELECT @SQL = COALESCE(@SQL,'') + 'Kill ' + Convert(varchar, SPId) + ';'
FROM MASTER..SysProcesses
WHERE DBId = DB_ID(@DatabaseName) AND SPId <> @@SPId

--SELECT @SQL 
EXEC(@SQL)
GO

IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'DoctorWho')
DROP DATABASE DoctorWho

CREATE DATABASE DoctorWho

GO