CREATE OR ALTER VIEW vw_locations
AS
    SELECT 
        country.id AS 'Country Id',
        country.country_name AS 'Country Name', 
        region.id AS 'Region Id',
        region.region_name AS 'Region Name',
        subregion.id AS 'Subregion Id',
        subregion.subregion_name AS 'Subregion Name'
    FROM 
        location
    LEFT JOIN country ON location.country_id = country.id
    LEFT JOIN region ON location.region_id = region.id
    LEFT JOIN subregion ON location.subregion_id = subregion.id
GO
