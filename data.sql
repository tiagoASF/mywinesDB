USE mywinesDB
GO

INSERT INTO style (style_name)
    VALUES  ('Red Wine'),
            ('White Wine'),
            ('Rose Wine'),
            ('Sparklin'),
            ('Fortified')
GO

INSERT INTO country (country_name)
    VALUES  ('France'),
            ('Spain'),
            ('Italy'),
            ('Portugal'),
            ('Germany'),
            ('Australia'),
            ('South Africa'),
            ('New Zealand'),
            ('Argentina'),
            ('Uruguay'),
            ('Brazil'),
            ('Chile'),
            ('United States'),
            ('China'),
            ('Russia'),
            ('Romania'),
            ('Israel'),
            ('Marroco'),
            ('Austria')
GO

INSERT INTO region (region_name)
    VALUES  ('Champagne'),
            ('Loire Valley'),
            ('Bordeaux'),
            ('Provence'),
            ('Rhône Valley'),
            ('Burgundy'),
            ('Languedoc-Roussillon'),
            ('South-West'),
            ('Beaujolais'),
            ('Alsace'),
            ('Corsica'),
            ('Galicia'),
            ('Castilla y Léon'),
            ('Castilla-La Mancha'),
            ('Extremadura'),
            ('Andalucía'),
            ('Murcia'),
            ('Canary Islands'),
            ('Valencia'),
            ('Catalunya'),
            ('Navarra'),
            ('La Rioja'),
            ('País Vasco'),
            ('Madrid'),
            ('Aragón'),
            ('Valle Daosta'),
            ('Piedmont'),
            ('Liguria'),
            ('Umbria'),
            ('Lazio'),
            ('Campania'),
            ('Basilicata'),
            ('Calabria'),
            ('Sicily'),
            ('Puglia'),
            ('Molise'),
            ('Abruzzo'),
            ('Le Marche'),
            ('Emilia-Romagna'),
            ('Veneto'),
            ('Friuli-Venezia Giulia'),
            ('Trentino-Alto Adige'),
            ('Lombardy'),
            ('Sardegna'),
            ('Tuscany'),
            ('Azores'),
            ('Vinho Verde'),
            ('Dão'),
            ('Bairrada'),
            ('Lisboa'),
            ('Tejo'),
            ('Setúbal'),
            ('Madeira'),
            ('Algarve'),
            ('Alentejo'),
            ('Beira Interior'),
            ('Tavora-Varosa'),
            ('Douro Valley'),
            ('Tras-Os-Montes'),
            ('Rheingau'),
            ('Mittelrhein'), 
            ('Rheinhessen'),
            ('Ahr'), 
            ('Mosel'), 
            ('Nahe'), 
            ('Pfalz'),
            ('Baden'), 
            ('Wurttemberg'), 
            ('Franken'), 
            ('Hessische Bergstrasse'),
            ('Sachsen'), 
            ('Saale-Unstrut'),
            ('Western Australia'), 
            ('South Australia'), 
            ('New South Wales'), 
            ('Queensland'), 
            ('Victoria'),
            ('Tasmania'), 
            ('Orange River Valley'),
            ('Olifants River Valey'),
            ('Breedekloof'), 
            ('Swartland/Malmesbury'),
            ('Paarl'),
            ('Walker Bay'),
            ('Stellenbosch'),
            ('Robertson'),
            ('Klein Karoo'),
            ('Worcester'),
            ('Northland'),
            ('Auckland'),
            ('Hawkes Bay'),
            ('Nelson'),
            ('Central Otago'),
            ('Waipara Valley/Canterbury'),
            ('Marlborough'),
            ('Wairarapa'),
            ('Gisborne'),
            ('Waikato/Bay of Plenty'),
            ('San Juan'), 
            ('La Rioja'), 
            ('Patagonia'),
            ('Salta'), 
            ('Catamarca'), 
            ('Tucumán'),
            ('Mendonza'),
            ('Vale dos Vinhedos'),
            ('Campanha Gaúcha'),
            ('Monte Belo'),
            ('Pinto Bandeira'),
            ('Vale do São Francisco'),
            ('Altos Montes'),
            ('Espírito Santo do Pinhal'),
            ('Serra dos Pirineus'),
            ('Atacama Region'),
            ('Coquimbo Region'),
            ('Aconcagua Region'),
            ('Central Valley Region'),
            ('South Region'),
            ('Austral Region'),
            ('Redwoods'),
            ('Sierra Foothills'),
            ('Inland Valleys'),
            ('South Coast'),
            ('Columbia Valley'),
            ('Willamette Valley'),
            ('Southern Oregon'),
            ('Central Coast'),
            ('North Coast'),
            ('Niederosterreich'),
            ('Burgenland'),
            ('Steiermark'),
            ('Wien'),
            ('Western Cape')
GO

INSERT INTO subregion (subregion_name)
    VALUES  ('Vallée De La Marne'), 
            ('Côte Des Blancs'), 
            ('Côte De Sézanne'), 
            ('Montagne De Reims'), 
            ('Côte Des Bar'), 
            ('Pays Natais'), 
            ('Touraine'), 
            ('Centre'), 
            ('Anjou-Saumur'),
            ('Médoc'), 
            ('Graves'), 
            ('Sauternais'), 
            ('Entre-Deux-Mers'), 
            ('Libournauis'), 
            ('Bourg And Blaye'),
            ('Les-Baux-De-Provence'), 
            ('Coteaux Daix-Eovence'), 
            ('Côtes De Provence'), 
            ('Coteaux Varois'), 
            ('Coteaux De Pierrevert'), 
            ('Northern Rhone'), 
            ('Southern Rhone'), 
            ('Die'), 
            ('Chablis'), 
            ('Côte-Dor'), 
            ('Côte Chalonnaise'), 
            ('Mâconnais'), 
            ('Massa-Carrara'),
            ('Lucca'),
            ('Livorno'),
            ('Grosseto'),
            ('Chianti'),
            ('Maipo'), 
            ('Lujan de Cuyo'), 
            ('Uco Valley'), 
            ('San Francisco Bay'),
            ('San Benito'),
            ('Monterey'),
            ('Paso Robles'),
            ('San Luis Obispo'),
            ('Santa Barbara'),
            ('Mendocino'),
            ('Clear Lake'),
            ('Sonoma'),
            ('Napa Valley')
GO


INSERT INTO storage_condition (storage_name)
    VALUES  ('Winery'),
            ('Consumed'),
            ('Guard'),
            ('Bad Condition')
GO

INSERT INTO variety (variety_name)
    VALUES  ('Blend'),  
            ('Marsanne Blend'),
            ('Bordeaux Blend'),
            ('GSM Blend'),
            ('Valpolicella Blend'),
            ('Albariño'),
            ('Gruner Veltliner'),
            ('Muscadet'),
            ('Pinot Gris'),
            ('Sauvignon Blanc'),
            ('Soave'),
            ('Vermetino'),
            ('Chardonnay'), 
            ('Sémillon'), 
            ('Viognier'), 
            ('Chenin Blanc'), 
            ('Gewurztraminer'), 
            ('Muscat Blanc'), 
            ('Riesling'), 
            ('Torrontés'),
            ('Gammay'), 
            ('Pinot Noir'),
            ('Barbera'),
            ('Cabernet Franc'),
            ('Carignan'),
            ('Carménère'), 
            ('Grenache'),
            ('Mencía'),
            ('Merlot'),
            ('Montepulciano'),
            ('Negroamaro'),
            ('Sangiovese'),
            ('Zinfandel'),
            ('Aglianico'),
            ('Cabernet Sauvignon'),
            ('Malbec'),
            ('Mourvèdre'),
            ('Nebbiolo'),
            ('Nero Davola'),
            ('Petit Verdot'), 
            ('Petit Sirah'),
            ('Syrah'),
            ('Tempranillo'),
            ('Touriga Nacional'),
            ('Pinotage'),
            ('Porto'),
            ('Xerez')
GO


INSERT INTO winery VALUES ('African Pride Wines')


INSERT INTO profile VALUES(4,2,1,3,2, 'Vinho ligeiro, com uma leve salinidade, mas um ponto leve de amargor')

INSERT INTO location
VALUES
(
    7,
    133,
    null
)


INSERT INTO wine_bottle
VALUES  
(
    'Footprint Chardonnay',
    2019,
    49.99,
    '2022-10-10',
    '2023-03-31',
    'Vinho simples, vale o valor promocional pago, mas nao o preco de tabela',
    6,
    0,
    2, --branco
    13, --chardonnay
    1, --vinicola
    2, --consumed
    1, --profile id
    1--location id
)


--02 de abril de 2023
INSERT INTO winery VALUES('Riccitelli')
GO

INSERT INTO profile VALUES(2, 4, 5, 3, 3, 'Tanico, e pouco frutado, fora da tipicidade da Malbec')

INSERT INTO location VALUES(9, 105, 35)

INSERT INTO wine_bottle
VALUES  
(
    'This is not another lovely malbec',
    2021,
    99.90,
    '2022-12-20',
    '2023-03-10',
    'Malbec fora do padrao esperado, pouco frutado e bastante tanico. Fermentacao realizada com grande parte dos cachos inteiros, e estagio em tanque de concreto',
    7, --nota
    0, --preferido?
    1, --tipo
    36, --variedade
    2, --vinicola
    2, --consumed
    2, --profile id
    2 --location id
)

---
INSERT INTO winery VALUES('Casa Relvas')
GO

INSERT INTO location VALUES(4, 55, null)

INSERT INTO wine_bottle
VALUES  
(
    'Herdade de Sao Miguel',
    2020,
    89.99,
    '2022-12-20',
    null,
    null,
    null, --nota
    null, --preferido?
    1, --tipo
    1, --variedade
    3, --vinicola
    1, --consumed
    null, --profile id
    2 --location id
)

UPDATE wine_bottle
SET 
    consumption_date = '2023-01-21',
    score = 7,
    isFavorite = 0,
    storage_condition_id = 2,
    location_id = 3
WHERE id = 3

---
INSERT INTO winery VALUES('Herdade do Rocim')
GO

INSERT INTO location VALUES(4, 55, null)

INSERT INTO wine_bottle
VALUES  
(
    'Mariana', --nome
    2020, --safra
    69.98, --preco
    '2022-12-20', --datacompra
    '2023-01-27', --dataconsumo
    null, --comentario
    8, --nota
    1, --preferido?
    1, --tipo
    1, --variedade
    4, --vinicola
    2, --consumed
    null, --profile id
    3 --location id
)

---
INSERT INTO winery VALUES('Vinhedo Girassol')
GO

INSERT INTO location VALUES(11, 113, null)
GO

INSERT INTO wine_bottle
VALUES  
(
    'Terroir Girassol', --nome
    2021, --safra
    139, --preco
    '2023-03-27', --datacompra
    null, --dataconsumo
    'Vinho para a colecao', --comentario
    null, --nota
    0, --preferido?
    1, --tipo
    42, --variedade
    5, --vinicola
    3, --consumed
    null, --profile id
    4 --location id
)
---
INSERT INTO winery VALUES('Podere Brizio')
GO

INSERT INTO subregion VALUES ('Montalcino')

INSERT INTO location VALUES(3, 45, 46)
GO

INSERT INTO wine_bottle
VALUES  
(
    'Brunello Di Montalcino DOCG', --nome
    2013, --safra
    736, --preco
    '2023-03-01', --datacompra
    null, --dataconsumo
    'Peresente de aniversario de 41 anos. De: Biazinha', --comentario
    null, --nota
    1, --preferido?
    1, --style
    32, --variedade
    6, --vinicola
    1, --consumed
    null, --profile id
    5 --location id
)


---
INSERT INTO winery VALUES('De Martino')
GO


INSERT INTO location VALUES(12, 117, 33)
GO

INSERT INTO wine_bottle
VALUES  
(
    'De Martino', --nome
    2019, --safra
    89.90, --preco
    '2022-12-20', --datacompra
    null, --dataconsumo
    null, --comentario
    null, --nota
    0, --preferido?
    1, --style
    35, --variedade
    7, --vinicola
    1, --consumed
    null, --profile id
    6 --location id
)

---
INSERT INTO profile VALUES (3,2,1,5,2, 'Acidez muito pronunciada') 


INSERT INTO wine_bottle
VALUES  
(
    'Mariana', --nome
    2021, --safra
    69.98, --preco
    '2022-12-20', --datacompra
    '2023-03-05', --dataconsumo
    null, --comentario
    6, --nota
    0, --preferido?
    2, --tipo
    48, --variedade
    4, --vinicola
    2, --consumed
    3, --profile id
    3 --location id
)

---

