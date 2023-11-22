-- VERIFICANDO TODOS BANCOS NO SERVIDOR

SELECT name, database_id, create_date
FROM sys.databases
GO

--SEEING TABLES 

SELECT *
FROM [mywineDB].INFORMATION_SCHEMA.TABLES
WHERE 
    TABLE_TYPE = 'BASE TABLE'

--SEEING TABLES 2

USE mywineDB
SELECT * FROM sys.tables

-- DROP DATABASE
USE [master]; 
DECLARE @kill varchar(8000) = '';   
SELECT @kill = @kill + 'kill ' + CONVERT(varchar(5), session_id) + ';'   
FROM sys.dm_exec_sessions 
WHERE database_id  = db_id('Curso') 
EXEC(@kill); 
DROP DATABASE [mywinesDB]


-- Seeing views

SELECT 
	OBJECT_SCHEMA_NAME(v.object_id) schema_name,
	v.name
FROM 
	sys.views as v;

--Seeing Stored Procedures
SELECT * 
  FROM mywinesDB.INFORMATION_SCHEMA.ROUTINES
 WHERE ROUTINE_TYPE = 'PROCEDURE'