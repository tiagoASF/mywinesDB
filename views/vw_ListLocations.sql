CREATE OR ALTER VIEW vw_ListLocations
AS
    SELECT 
        location.id AS 'Location Id',
        country.country_name AS 'Country Name', 
        country.id AS 'Country Id',
        region.region_name AS 'Region Name',
        region.id AS 'Region Id',
        subregion.subregion_name AS 'Subregion Name',
        subregion.id AS 'Subregion Id'
    FROM 
        location
    LEFT JOIN country ON location.country_id = country.id
    LEFT JOIN region ON location.region_id = region.id
    LEFT JOIN subregion ON location.subregion_id = subregion.id
GO

