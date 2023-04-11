CREATE OR ALTER VIEW vw_ConsumedIn_2023
AS
    SELECT
        wine_bottle.consumption_date AS 'Consumido em',
        wine_bottle.bottle_name AS 'Vinho',
        variety.variety_name AS 'Uva',
        winery.winery_name AS 'Produtor',
        wine_bottle.score AS 'Nota',
        style.style_name AS 'Estilo'
        -- country.country_name AS 'Pais',
        -- region.region_name AS 'Regiao',
        -- subregion.subregion_name AS 'Subregiao',
        -- storage_condition.storage_name AS 'Armazenamento'
    FROM wine_bottle
        LEFT JOIN variety ON wine_bottle.variety_id = variety.id
        LEFT JOIN winery ON wine_bottle.winery_id = winery.id
        LEFT JOIN style ON wine_bottle.style_id = style.id
        LEFT JOIN storage_condition ON wine_bottle.storage_condition_id = storage_condition.id
    WHERE
        (wine_bottle.consumption_date BETWEEN '2023-01-01' AND '2023-12-31')
        AND storage_condition_id = 2
GO