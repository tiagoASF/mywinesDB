--SEEING TABLES 
SELECT *
FROM [mywinesDB].INFORMATION_SCHEMA.TABLES
WHERE 
    TABLE_TYPE = 'BASE TABLE'

-- DROP DATABASE
USE [master]; 
DECLARE @kill varchar(8000) = '';   
SELECT @kill = @kill + 'kill ' + CONVERT(varchar(5), session_id) + ';'   
FROM sys.dm_exec_sessions 
WHERE database_id  = db_id('Curso') 
EXEC(@kill); 
DROP DATABASE [mywinesDB]


-- drop all tables
DECLARE @sql NVARCHAR(2000)

WHILE(EXISTS(SELECT 1 from INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_TYPE='FOREIGN KEY'))
BEGIN
    SELECT TOP 1 @sql=('ALTER TABLE ' + CONSTRAINT_SCHEMA + '.[' + TABLE_NAME + '] DROP CONSTRAINT [' + CONSTRAINT_NAME + ']')
    FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_TYPE = 'FOREIGN KEY'
    EXEC(@sql)
    PRINT @sql
END

WHILE(EXISTS(SELECT * from INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME != '__MigrationHistory' AND TABLE_NAME != 'database_firewall_rules' AND TABLE_NAME != 'ipv6_database_firewall_rules'))
BEGIN
    SELECT TOP 1 @sql=('DROP TABLE ' + CONSTRAINT_SCHEMA  + '.[' + TABLE_NAME + ']')
    FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE TABLE_NAME != '__MigrationHistory' AND TABLE_NAME != 'database_firewall_rules'
    EXEC(@sql)
    PRINT @sql
END


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