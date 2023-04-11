CREATE OR ALTER VIEW vw_ListBottles
AS
    SELECT 
        storage_condition.storage_name AS 'Armazenamento',
        wine_bottle.bottle_name AS 'Vinho',
        wine_bottle.vintage_date AS 'Safra',
        variety.variety_name AS 'Uva',
        style.style_name AS 'Estilo',
        winery.winery_name AS 'Produtor',
        wine_bottle.price AS 'Preco',
        wine_bottle.purchase_date AS 'Compra',
        wine_bottle.consumption_date AS 'Consumo',
        wine_bottle.comments AS 'Comentarios',
        wine_bottle.score AS 'Nota',
        wine_bottle.isFavorite AS 'Favorito?'
        -- country.country_name AS 'Pais',
        -- region.region_name AS 'Regiao',
        -- subregion.subregion_name AS 'Subregiao',
        -- profile.id AS 'Perfil'

    FROM wine_bottle
        LEFT JOIN style ON wine_bottle.style_id = style.id
        -- LEFT JOIN country ON wine_bottle.country_id = country.id
        -- LEFT JOIN region ON wine_bottle.region_id = region.id
        -- LEFT JOIN subregion ON wine_bottle.subregion_id = subregion.id
        LEFT JOIN variety ON wine_bottle.variety_id = variety.id
        LEFT JOIN winery ON wine_bottle.winery_id = winery.id
        LEFT JOIN storage_condition ON wine_bottle.storage_condition_id = storage_condition.id
        -- LEFT JOIN profile ON wine_bottle.profile_id = profile.id
GO