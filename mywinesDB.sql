CREATE DATABASE mywinesDB
GO

USE mywinesDB
GO

------------------------ CREATING DATABASE ------------------------

CREATE TABLE style
(
    id TINYINT NOT NULL IDENTITY(1,1),
    style_name NVARCHAR(20) NOT NULL,
    CONSTRAINT pk_style PRIMARY KEY(id)
);
CREATE NONCLUSTERED INDEX ix_style_name ON style(style_name)
GO

CREATE TABLE country
(
    id TINYINT NOT NULL IDENTITY(1,1),
    country_name NVARCHAR(20) NOT NULL,
    CONSTRAINT pk_country PRIMARY KEY(id),
    CONSTRAINT uc_country_name UNIQUE(country_name)
)
CREATE NONCLUSTERED INDEX ix_country_name ON country(country_name)
GO


CREATE TABLE region
(
    id TINYINT NOT NULL IDENTITY(1,1),
    region_name NVARCHAR(50) NOT NULL,
    country_id TINYINT NOT NULL,
    CONSTRAINT pk_region PRIMARY KEY(id),
    CONSTRAINT fk_region_country FOREIGN KEY(country_id)
        REFERENCES country(id),
);
CREATE NONCLUSTERED INDEX ix_region_name ON region(region_name);
GO

CREATE TABLE subregion
(
    id TINYINT NOT NULL IDENTITY(1,1),
    subregion_name NVARCHAR(50) NOT NULL,
    region_id TINYINT NOT NULL,
    CONSTRAINT pk_subregion PRIMARY KEY(id),
    CONSTRAINT fk_subregion_region FOREIGN KEY(region_id)
        REFERENCES region(id),
    CONSTRAINT uc_subregion_name UNIQUE(subregion_name),
);
CREATE NONCLUSTERED INDEX ix_subregion_name ON subregion(subregion_name)
GO

-- Tabela denormalizada para facilitar buscas (criar posteriormente)
-- CREATE TABLE location
-- (
--     country_code TINYINT NOT NULL,
--     region_code TINYINT,
--     subregion_code TINYINT
--     CONSTRAINT composite_key_location PRIMARY KEY(country_code, region_code, subregion_code),    
-- )
-- GO

CREATE TABLE winery
(
    id INT NOT NULL IDENTITY(1,1),
    winery_name NVARCHAR(100) NOT NULL,
    CONSTRAINT pk_winery PRIMARY KEY(id),
    CONSTRAINT uc_winery_name UNIQUE(winery_name)
)
CREATE NONCLUSTERED INDEX ix_winery_name ON winery(winery_name)
GO

CREATE TABLE storage_condition
(
    id TINYINT NOT NULL IDENTITY(1,1),
    storage_name NVARCHAR(20) NOT NULL,
    CONSTRAINT pk_storage_condition PRIMARY KEY(id),
    CONSTRAINT uc_storage_name UNIQUE(storage_name)
)
CREATE NONCLUSTERED INDEX ix_storage_name ON storage_condition(storage_name)
GO

CREATE TABLE variety
(
    id TINYINT NOT NULL IDENTITY(1,1),
    variety_name NVARCHAR(50) NOT NULL,
    CONSTRAINT pk_variety PRIMARY KEY(id),
    CONSTRAINT uc_variety_name UNIQUE(variety_name)
)
CREATE NONCLUSTERED INDEX ix_variety_name ON variety(variety_name)
GO

CREATE TABLE profile
(
    id INT NOT NULL IDENTITY(1,1),
    fruit TINYINT NOT NULL CHECK(fruit >= 1 AND fruit <=5),
    body TINYINT NOT NULL CHECK(body >= 1 AND body <=5),
    tannin TINYINT NOT NULL CHECK(tannin >= 1 AND tannin <=5),
    acidy TINYINT NOT NULL CHECK(acidy >= 1 AND acidy <=5),
    alcohol TINYINT NOT NULL CHECK(alcohol >= 1 AND alcohol <=5),
    comments NVARCHAR(max),
    CONSTRAINT pk_profile PRIMARY KEY(id)
)
GO


CREATE TABLE wine_bottle
(   
    id INT NOT NULL IDENTITY(1,1),
    bottle_name NVARCHAR(100) NOT NULL,
    vintage_date SMALLINT,
    price DECIMAL,
    purchase_date DATE,
    consumption_date DATE,
    comments NVARCHAR(max),
    score TINYINT CHECK (score >= 1 AND score <= 10),
    isFavorite BIT DEFAULT 0,
    style_id TINYINT NOT NULL,
    variety_id TINYINT NOT NULL,
    winery_id INT NOT NULL,
    storage_condition_id TINYINT NOT NULL,
    profile_id INT,
    country_id TINYINT NOT NULL,
    region_id TINYINT,
    subregion_id TINYINT,

    CONSTRAINT pk_wine_bottle PRIMARY KEY(id),

    CONSTRAINT fk_bottle_style FOREIGN KEY(style_id)
        REFERENCES style(id),

    CONSTRAINT fk_bottle_country FOREIGN KEY(country_id)
        REFERENCES country(id),

    CONSTRAINT fk_bottle_region FOREIGN KEY(region_id)
        REFERENCES region(id),

    CONSTRAINT fk_bottle_subregion FOREIGN KEY(subregion_id)
        REFERENCES subregion(id),
    
    CONSTRAINT fk_bottle_variety FOREIGN KEY(variety_id)
        REFERENCES variety(id),
    
    CONSTRAINT fk_bottle_winery FOREIGN KEY(winery_id)
        REFERENCES winery(id),
    
    CONSTRAINT fk_bottle_storage_condition FOREIGN KEY(storage_condition_id)
        REFERENCES storage_condition(id),
    
    CONSTRAINT fk_bottle_profile FOREIGN KEY(profile_id)
        REFERENCES profile(id),
    
)
CREATE NONCLUSTERED INDEX ix_bottle_score ON wine_bottle(score)
GO



------------------------------------------------- TOOLING ---------------------------------------------------

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
