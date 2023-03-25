------------------------------------------------- STORED PROCEDURES -----------------------------------------

-- 1.INSERTING A BOTTLE
CREATE PROCEDURE sp_insert_wine_bottle (@bottleName NVARCHAR(100),
                                        @vintageDate SMALLINT,
                                        @price DECIMAL,
                                        @purchaseDate DATE,
                                        @consumptionDate DATE,
                                        @comments NVARCHAR(max),
                                        @score TINYINT,
                                        @isFavorite BIT,
                                        @style_id TINYINT,
                                        @country_id TINYINT,
                                        @region_id TINYINT,
                                        @subregion_id TINYINT,
                                        @variety_id TINYINT,
                                        @winery_id INT,
                                        @storage_condition_id TINYINT,
                                        @profile_id INT)
AS 
    INSERT INTO wine_bottle
        VALUES
        (
            @bottleName,
            @vintageDate,
            @price,
            @purchaseDate,
            @consumptionDate,
            @comments,
            @score,
            @isFavorite,
            @style_id,
            @country_id,
            @region_id,
            @subregion_id,
            @variety_id,
            @winery_id,
            @storage_condition_id,
            @profile_id
        )
GO


------------------------------------------------- VIEWS -----------------------------------------
USE mywinesDB
GO

CREATE OR ALTER VIEW vw_list_wine_bottles
AS
    SELECT 
        wine_bottle.bottle_name AS 'Vinho',
        wine_bottle.vintage_date AS 'Safra',
        wine_bottle.price AS 'Preco',
        wine_bottle.purchase_date AS 'Compra',
        wine_bottle.consumption_date AS 'Consumo',
        wine_bottle.comments AS 'Comentario',
        wine_bottle.score AS 'Nota',
        wine_bottle.isFavorite AS 'Favorito',
        style.style_name AS 'Estilo',
        country.country_name AS 'Pais',
        region.region_name AS 'Regiao',
        subregion.subregion_name AS 'Subregiao',
        variety.variety_name AS 'Uva',
        winery.winery_name AS 'Produtor',
        storage_condition.storage_name AS 'Armazenamento',
        profile.id AS 'Perfil'

    FROM wine_bottle
        INNER JOIN [style] ON wine_bottle.style_id = style.id
        INNER JOIN [country] ON wine_bottle.country_id = country.id
        INNER JOIN [region] ON wine_bottle.region_id = region.id
        INNER JOIN [subregion] ON wine_bottle.subregion_id = subregion.id
        INNER JOIN [variety] ON wine_bottle.variety_id = variety.id
        INNER JOIN [winery] ON wine_bottle.winery_id = winery.id
        INNER JOIN [storage_condition] ON wine_bottle.storage_condition_id = storage_condition.id
        INNER JOIN [profile] ON wine_bottle.profile_id = profile.id
GO