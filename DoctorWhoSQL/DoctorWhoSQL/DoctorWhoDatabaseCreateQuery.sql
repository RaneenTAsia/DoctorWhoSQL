IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'DoctorWho')
DROP DATABASE DoctorWho

CREATE DATABASE DoctorWho

GO

