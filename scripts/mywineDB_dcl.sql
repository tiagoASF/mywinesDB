-- CRIANDO LOGINS
CREATE LOGIN biazinha
    WITH PASSWORD = 'bia_MB@1012$'

CREATE LOGIN tiago
    WITH PASSWORD = 'tas_F@228275'


-- CRIANDO USUARIOS NO BANCO mywinesDB
USE mywinesDB
GO

CREATE USER biazinha FOR LOGIN biazinha
GO

CREATE USER tiago FOR LOGIN tiago
GO

exec sp_addrolemember 'db_denydatawriter', 'biazinha'

