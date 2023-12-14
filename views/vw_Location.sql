USE mywinesDB
GO

CREATE VIEW vw_Locations
AS
    SELECT  
            wr.id AS 'Id',
            c.name AS 'Country',
            r.name AS 'Region',
            ISNULL(sub.name, '-') AS 'Subregion',
            ISNULL(d.name, '-') AS 'Denomination of Origin',
            ISNULL(geo.latitude, '-') AS 'Latitude',
            ISNULL(geo.longitude, '-') AS 'Longitude'
    FROM wine_region wr
    LEFT JOIN country c ON  wr.country_id = c.id
    LEFT JOIN region r ON  wr.region_id = r.id
    LEFT JOIN subregion sub ON  wr.subregion_id = sub.id
    LEFT JOIN denomination d ON  wr.denomination_id = d.id
    LEFT JOIN geographic_coordinates geo ON  wr.coordinates_id = geo.id
GO

SELECT * FROM vw_Locations
ORDER BY Country