USE mywinesDB
GO

INSERT INTO style (style_code, style_name)
    VALUES  (1, 'Red Wine'),
            (2, 'White Wine'),
            (3, 'Rose Wine'),
            (4, 'Sparklin'),
            (5, 'Fortified')
GO

INSERT INTO country (country_code, country_name)
    VALUES  (1, 'France'),
            (2, 'Spain'),
            (3, 'Italy'),
            (4, 'Portugal'),
            (5, 'Germany'),
            (6, 'Australia'),
            (7, 'South Africa'),
            (8, 'New Zealand'),
            (9, 'Argentina'),
            (10, 'Uruguay'),
            (11, 'Brazil'),
            (12, 'Chile'),
            (13, 'United States'),
            (14, 'China'),
            (15, 'Russia'),
            (16, 'Romania'),
            (17, 'Israel'),
            (18, 'Marroco'),
            (19, 'Austria')
GO


INSERT INTO region (country_id, region_code, region_name)
    VALUES  (1, 1, 'Champagne'),
            (1, 2, 'Loire Valley'),
            (1, 3, 'Bordeaux'),
            (1, 4, 'Provence'),
            (1, 5, 'Rhône Valley'),
            (1, 6, 'Burgundy'),
            (1, 7, 'Languedoc-Roussillon'),
            (1, 8, 'South-West'),
            (1, 9, 'Beaujolais'),
            (1, 10, 'Alsace'),
            (1, 11, 'Corsica'),
            
            (2, 12, 'Galicia'),
            (2, 13, 'Castilla y Léon'),
            (2, 14, 'Castilla-La Mancha'),
            (2, 15, 'Extremadura'),
            (2, 16, 'Andalucía'),
            (2, 17, 'Murcia'),
            (2, 18, 'Canary Islands'),
            (2, 19, 'Valencia'),
            (2, 20, 'Catalunya'),
            (2, 21, 'Navarra'),
            (2, 22, 'La Rioja'),
            (2, 23, 'País Vasco'),
            (2, 24, 'Madrid'),
            (2, 25, 'Aragón'),

            (3, 26, 'Valle Daosta'),
            (3, 27, 'Piedmont'),
            (3, 28, 'Liguria'),
            (3, 29, 'Umbria'),
            (3, 30, 'Lazio'),
            (3, 31, 'Campania'),
            (3, 32, 'Basilicata'),
            (3, 33, 'Calabria'),
            (3, 34, 'Sicily'),
            (3, 35, 'Puglia'),
            (3, 36, 'Molise'),
            (3, 37, 'Abruzzo'),
            (3, 38, 'Le Marche'),
            (3, 39, 'Emilia-Romagna'),
            (3, 40, 'Veneto'),
            (3, 41, 'Friuli-Venezia Giulia'),
            (3, 42, 'Trentino-Alto Adige'),
            (3, 43, 'Lombardy'),
            (3, 44, 'Sardegna'),
            (3, 45, 'Tuscany'),

            (4, 46, 'Azores'),
            (4, 47, 'Vinho Verde'),
            (4, 48, 'Dão'),
            (4, 49, 'Bairrada'),
            (4, 50, 'Lisboa'),
            (4, 51, 'Tejo'),
            (4, 52, 'Setúbal'),
            (4, 53, 'Madeira'),
            (4, 54, 'Algarve'),
            (4, 55, 'Alentejo'),
            (4, 56, 'Beira Interior'),
            (4, 57, 'Tavora-Varosa'),
            (4, 58, 'Douro Valley'),
            (4, 59,'Tras-Os-Montes'),
            
            (5, 60, 'Rheingau'),
            (5, 61, 'Mittelrhein'), 
            (5, 62, 'Rheinhessen'),
            (5, 63, 'Ahr'), 
            (5, 64, 'Mosel'), 
            (5, 65, 'Nahe'), 
            (5, 66, 'Pfalz'),
            (5, 67, 'Baden'), 
            (5, 68, 'Wurttemberg'), 
            (5, 69, 'Franken'), 
            (5, 70, 'Hessische Bergstrasse'),
            (5, 71, 'Sachsen'), 
            (5, 72, 'Saale-Unstrut'),
                
            (6, 73, 'Western Australia'), 
            (6, 74, 'South Australia'), 
            (6, 75, 'New South Wales'), 
            (6, 76, 'Queensland'), 
            (6, 77, 'Victoria'),
            (6, 78, 'Tasmania'), 
            
            (7, 79, 'Orange River Valley'),
            (7, 80, 'Olifants River Valey'),
            (7, 81, 'Breedekloof'), 
            (7, 82, 'Swartland/Malmesbury'),
            (7, 83, 'Paarl'),
            (7, 84, 'Walker Bay'),
            (7, 85, 'Stellenbosch'),
            (7, 86, 'Robertson'),
            (7, 87, 'Klein Karoo'),
            (7, 88, 'Worcester'),

            (8, 89, 'Northland'),
            (8, 90, 'Auckland'),
            (8, 91, 'Hawkes Bay'),
            (8, 92, 'Nelson'),
            (8, 93, 'Central Otago'),
            (8, 94, 'Waipara Valley/Canterbury'),
            (8, 95, 'Marlborough'),
            (8, 96, 'Wairarapa'),
            (8, 97, 'Gisborne'),
            (8, 98, 'Waikato/Bay of Plenty'),

            (9, 99, 'San Juan'), 
            (9, 100, 'La Rioja'), 
            (9, 101, 'Patagonia'),
            (9, 102, 'Salta'), 
            (9, 103, 'Catamarca'), 
            (9, 104, 'Tucumán'),
            (9, 105, 'Mendonza'),

            (11, 106, 'Vale dos Vinhedos'),
            (11, 107, 'Campanha Gaúcha'),
            (11, 108, 'Monte Belo'),
            (11, 109, 'Pinto Bandeira'),
            (11, 110, 'Vale do São Francisco'),
            (11, 111, 'Altos Montes'),
            (11, 112, 'Espírito Santo do Pinhal'),      

            (12, 113, 'Atacama Region'),
            (12, 114, 'Coquimbo Region'),
            (12, 115, 'Aconcagua Region'),
            (12, 116, 'Central Valley Region'),
            (12, 117, 'South Region'),
            (12, 118, 'Austral Region'),
      
            (13, 119, 'Redwoods'),
            (13, 120, 'Sierra Foothills'),
            (13, 121, 'Inland Valleys'),
            (13, 122, 'South Coast'),
            (13, 123, 'Columbia Valley'),
            (13, 124, 'Willamette Valley'),
            (13, 125, 'Southern Oregon'),
            (13, 126, 'Central Coast'),
            (13, 127, 'North Coast'),

            (19, 128, 'Niederosterreich'),
            (19, 129, 'Burgenland'),
            (19, 130, 'Steiermark'),
            (19, 131, 'Wien')


INSERT INTO subregion (region_id, subregion_code, subregion_name)
    VALUES  (1, 1, 'Vallée De La Marne'), 
            (1, 2, 'Côte Des Blancs'), 
            (1, 3, 'Côte De Sézanne'), 
            (1, 4, 'Montagne De Reims'), 
            (1, 5, 'Côte Des Bar'), 

            (2, 6, 'Pays Natais'), 
            (2, 7, 'Touraine'), 
            (2, 8, 'Centre'), 
            (2, 9, 'Anjou-Saumur'),

            (3, 10, 'Médoc'), 
            (3, 11, 'Graves'), 
            (3, 12, 'Sauternais'), 
            (3, 13, 'Entre-Deux-Mers'), 
            (3, 14, 'Libournauis'), 
            (3, 15, 'Bourg And Blaye'), 

            (4, 16, 'Les-Baux-De-Provence'), 
            (4, 17, 'Coteaux Daix-En-Provence'), 
            (4, 18, 'Côtes De Provence'), 
            (4, 19, 'Coteaux Varois'), 
            (4, 20, 'Coteaux De Pierrevert'), 

            (5, 21, 'Northern Rhone'), 
            (5, 22, 'Southern Rhone'), 
            (5, 23, 'Die'), 
            (6, 24, 'Chablis'), 
            (6, 25, 'Côte-Dor'), 
            (6, 26, 'Côte Chalonnaise'), 
            (6, 27, 'Mâconnais'), 

            (45, 28, 'Massa-Carrara'),
            (45, 29, 'Lucca'),
            (45, 30, 'Livorno'),
            (45, 31, 'Grosseto'),
            (45, 32, 'Chianti'),

            (105, 33, 'Maipo'), 
            (105, 34, 'Lujan de Cuyo'), 
            (105, 35, 'Uco Valley'), 
            
            (126, 36, 'San Francisco Bay'),
            (126, 37, 'San Benito'),
            (126, 38, 'Monterey'),
            (126, 39, 'Paso Robles'),
            (126, 40, 'San Luis Obispo'),
            (126, 41, 'Santa Barbara'),
            (127, 42, 'Mendocino'),
            (127, 43, 'Clear Lake'),
            (127, 44, 'Sonoma'),
            (127, 45, 'Napa Valley')

GO


INSERT INTO storage_condition (storage_code, storage_name)
    VALUES  (1, 'Winery'),
            (2, 'Consumed'),
            (3, 'Guard'),
            (4, 'Bad Condition')
GO

INSERT INTO variety (variety_code, variety_name)
    VALUES  (1, 'Blend'),  
            (2, 'Marsanne Blend'),
            (3, 'Bordeaux Blend'),
            (4, 'GSM Blend'),
            (5, 'Valpolicella Blend'),
            (6, 'Albariño'),
            (7, 'Gruner Veltliner'),
            (8, 'Muscadet'),
            (9, 'Pinot Gris'),
            (10, 'Sauvignon Blanc'),
            (11, 'Soave'),
            (12, 'Vermetino'),
            (13, 'Chardonnay'), 
            (14, 'Sémillon'), 
            (15, 'Viognier'), 
            (16, 'Chenin Blanc'), 
            (17, 'Gewurztraminer'), 
            (18, 'Muscat Blanc'), 
            (19, 'Riesling'), 
            (20, 'Torrontés'),
            (21, 'Gammay'), 
            (22, 'Pinot Noir'),
            (23, 'Barbera'),
            (24, 'Cabernet Franc'),
            (25, 'Carignan'),
            (26, 'Carménère'), 
            (27, 'Grenache'),
            (28, 'Mencía'),
            (29, 'Merlot'),
            (30, 'Montepulciano'),
            (31, 'Negroamaro'),
            (32, 'Sangiovese'),
            (33, 'Zinfandel'),
            (34, 'Aglianico'),
            (35, 'Cabernet Sauvignon'),
            (36, 'Malbec'),
            (37, 'Mourvèdre'),
            (38, 'Nebbiolo'),
            (39, 'Nero Davola'),
            (40, 'Petit Verdot'), 
            (41, 'Petit Sirah'),
            (42, 'Syrah'),
            (43, 'Tempranillo'),
            (44, 'Touriga Nacional'),
            (45, 'Pinotage'),
            (46, 'Porto'),
            (47, 'Xerez')
GO


------------ MOCK DATA

INSERT INTO winery (winery_name)
    VALUES 
        ('Casa Valduga'), 
        ('Larentis'),
        ('Miolo'),
        ('Aurora'), 
        ('Família Geisse'),
        ('Guaspari'), 
        ('Errazuriz'), 
        ('Garzon'), 
        ('Catena Zapata'), 
        ('Susana Balbo'),
        ('Casa Marques Pereira')
GO

INSERT INTO profile
    VALUES(1,2,3,4,5), (5,4,3,2,1), (2,2,2,4,5)

INSERT INTO wine_bottle
    VALUES 
    (
        'Podere Brizio Brunello Di Montalcino',
        2013,
        736.45,
        '2023-02-05',
        null,
        'Presente de aniversario de 41 anos',
        null,
        1,
        1,
        3,
        45,
        null,
        32,
        1,
        3,
        null
    )

SELECT 
    wine_bottle.bottle_name AS 'Vinho',
    wine_bottle.vintage_date AS 'Safra',
    wine_bottle.price AS 'Preco',
    wine_bottle.purchase_date AS 'Data da compra',
    wine_bottle.comments AS 'Comentario',
    wine_bottle.isFavorite AS 'Favorito',
    style.style_name AS 'Estilo',
    country.country_name AS 'Pais',
    region.region_name AS 'Regiao',
    variety.variety_name AS 'Uva',
    winery.winery_name AS 'Produtor',
    storage_condition.storage_name AS 'Armazenamento'

FROM wine_bottle
    INNER JOIN [style] ON wine_bottle.style_id = style.id
    INNER JOIN [country] ON wine_bottle.country_id = country.id
    INNER JOIN [region] ON wine_bottle.region_id = region.id
    INNER JOIN [variety] ON wine_bottle.variety_id = variety.id
    INNER JOIN [winery] ON wine_bottle.winery_id = winery.id
    INNER JOIN [storage_condition] ON wine_bottle.storage_condition_id = storage_condition.id
GO


EXEC sp_insert_wine_bottle
    'Garrafa teste',
    2019,
    145.99,
    '2023-01-10',
    '2023-02-05',
    'Teste de insercao por SP',
    8,
    0,
    3,
    4,
    52,
    null,
    5,
    4,
    2,
    1
GO


USE mywinesDB
GO
SELECT * FROM vw_list_wine_bottles

GO

exec sp_refreshview  vw_list_wine_bottles
 
    

  select * from information_schema.tables