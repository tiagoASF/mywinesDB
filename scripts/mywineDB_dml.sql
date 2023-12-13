USE mywinesDB
GO

-- AGING VESSELS

SELECT * FROM aging_vessel

INSERT INTO aging_vessel(name, description)
VALUES ('Stainless steel', 'Stainless steel is completely hermetic. And while this risks reducing the wine during winemaking, the airtight environment preserves flavors.Stainless steel is often used for young wines with good fruit-expression.')

INSERT INTO aging_vessel(name, description)
VALUES ('Concrete', 'Concrete, though neutral, is still a semi-porous substance and allows for micro-oxygenation, whereby the aging is similar to a barrel but without imparting oak aromas or flavors.')

UPDATE aging_vessel
SET [description] = 'Concrete preserves the purity of the aromas and flavors of the wine, thanks to that micro-oxygenation, and compared to other materials, like oak, it does not add anything to the wine.'
WHERE name = 'Concrete'


INSERT INTO aging_vessel(name, description)
VALUES ('Oak', 'Stainless steel is completely hermetic. And while this risks reducing the wine during winemaking, the airtight environment preserves flavors.Stainless steel is often used for young wines with good fruit-expression.')

INSERT INTO aging_vessel(name, description)
VALUES ('Oak', 'Oak barrels do three things to wine. They allow for oxygen exposure, which assists with maturation. They also provide tannins that give the wine structure. Finally, depending on the level of toast and age of the barrel, they also impart certain flavors. How these factors are managed depends on the winemaker.')

ALTER TABLE aging_vessel
ALTER COLUMN description VARCHAR(600);

ALTER TABLE winery
ALTER COLUMN description VARCHAR(1000);

ALTER TABLE grape_variety
ALTER COLUMN description VARCHAR(1000);

UPDATE aging_vessel
SET [description] = 'Oak barrels do three things to wine. They allow for oxygen exposure, which assists with maturation. They also provide tannins that give the wine structure. Finally, depending on the level of toast and age of the barrel, they also impart certain flavors. How these factors are managed depends on the winemaker.'
WHERE name = 'Oak'

INSERT INTO aging_vessel(name, description)
VALUES('Amphora', 'The wine is kind of softer. There’s sort of a rustic minerality that comes out, which is kind of cool, but while the desire with amphora is to lessen the vessel’s impact on the wine, it takes time - in a couple of years we’ve got a bit of a clay flavor impact on the wines')

INSERT INTO aging_vessel(name)
VALUES ('None')

INSERT INTO aging_vessel(name)
VALUES ('Mixed')

-- STYLE
INSERT INTO style(name)
VALUES
    ('Red Wine'),
    ('White Wine'),
    ('Orange Wine'),
    ('Rosé Wine'),
    ('Sparkling Wine'),
    ('Fortified')
GO

-- STATUS

INSERT INTO status(status_description)
VALUES
    ('Guard'),
    ('Consumed'),
    ('Winery'),
    ('Flawed wine')





INSERT INTO grape_variety(name, native_country, description)
VALUES(
  'Antão Vaz',
  'Portugal',
  'This is one of the most prized varieties of the Alentejo, until recently grown almost exclusively around Vidigueira. As a rule it produces firm, full-bodied, well-structured wines. Made as a single variety, it has lively aromas, with hints of ripe tropical fruits, tangerine peel and something mineral.'
)

INSERT INTO denomination(name)
VALUES ('DOC Alentejo Vidigueira')

INSERT INTO country(name)
VALUES ('Portugal')

INSERT INTO region(name)
VALUES('Alentejo')

INSERT INTO wine_region (denomination_id, country_id, region_id)
VALUES (1, 1, 1)

INSERT INTO winery(name, country, description)
VALUES ('Herdade do Rocim', 'Portugal', 'Herdade do Rocim is an estate located between Vidigueira and Cuba, in the Lower Alentejo, with a size of 120 hectares, 70 of which are vineyards and 10 of olive trees. The Vidigueira fault, a natural landmark which marks the border between the Upper and Lower Alentejo, determines the raison d´être of Vidigueira, the southernmost wine-producing sub-region in the Alentejo. The East-West facing escarpment, of around 50 kilometers in length, defines the climate of Vidigueira, and, despite its deep-lying southern location, makes it one of the most temperate sub-regions in the Alentejo. "At Herdade do Rocim we have always respected the natural vocation of the region´s terroir, producing fresh, elegant and mineral wines."')


INSERT INTO wine (
  label,
  harvest_year,
  abv,
  aging_vessel_id,
  grape_variety_id,
  style_id,
  wine_region_id,
  winery_id)
VALUES
  ( 'Olho de Mocho Single Vineyard',
    '2021',
    12.5,
    7,
    1,
    2,
    2,
    4
  )

INSERT INTO geographic_coordinates (latitude, longitude)
VALUES('-15.8338103', '-47.9548795')

INSERT INTO wine_store (name, city, geographic_coordinates_id)
VALUES('World Wine', 'Brasília', 1)

INSERT INTO acquired_bottle (
  acquired_date,
  consumption_date,
  purchase_price,
  viewing_permission,
  description,
  wine_id,
  status_id,
  wine_store_id,
  appraisement_id,
  acquirer_id
)
VALUES
(
  '2023-11-30',
  null,
  218.00,
  1,
  null,
  2,
  3,
  1,
  null,
  1
)


INSERT INTO grape_variety(name, native_country, description)
VALUES(
  'Riesling',
  'Germany',
  'Riesling wine has a colorful German heritage. Today, it has emerged as one of the most collectible white wines among top connoisseurs around the world. Tasting Riesling starts with intense aromas that rise from the glass (even when the wine is ice cold). This aromatic wine offers primary fruit aromas of orchard fruits like nectarine, apricot, honey-crisp apple, and pear. Besides fruit, you’ll often smell things like honeycomb, jasmine, or lime peel, along with a striking aroma that smells similar to petrol or petroleum wax (a natural compound called TDN). On the palate, Riesling has high acidity, similar to the levels in lemonade.'
)


INSERT INTO country(name)
VALUES ('Germany')

INSERT INTO region(name)
VALUES('Rhein')

INSERT INTO wine_region (denomination_id, country_id, region_id)
VALUES (null, 2, 2)

INSERT INTO winery(name, country, description)
VALUES ('Balthasar Ress', 'Germany', 'We create fine Rieslings and fine Pinot Noirs for wine enthusiasts worldwide, always following Balthasar''s maxim >>And Fine Be The Wine!<<. The distinctive combination of top Rheingau vineyards, certified organic viticulture and gentle artisanal winemaking methods make our wines so fine.')


INSERT INTO wine (
  label,
  harvest_year,
  abv,
  aging_vessel_id,
  grape_variety_id,
  style_id,
  wine_region_id,
  winery_id)
VALUES
  ( 'Ressi Riesling',
    '2021',
    10.0,
    5,
    2,
    2,
    3,
    5
  )


INSERT INTO acquired_bottle (
  acquired_date,
  consumption_date,
  purchase_price,
  viewing_permission,
  description,
  wine_id,
  status_id,
  wine_store_id,
  appraisement_id,
  acquirer_id
)
VALUES
(
  '2023-11-30',
  null,
  196,
  1,
  null,
  3,
  3,
  1,
  null,
  1
)

INSERT INTO grape_variety(name, native_country, description)
VALUES(
  'Blend',
  null,
  null
)

INSERT INTO country(name)
VALUES ('Brazil')

INSERT INTO region(name)
VALUES('Pinto Bandeira')

INSERT INTO wine_region (denomination_id, country_id, region_id, coordinates_id)
VALUES (null, 3, 3)

UPDATE wine_region
SET coordinates_id = 2
WHERE id = 4

INSERT INTO winery(name, country, description)
VALUES ('Valmarino ', 'Brazil', 'O empreendimento familiar começou em 1978 com o plantio das primeiras uvas viníferas. Uma Família de origem Italiana e centenária, onde pela tradição e vocação Orval Salton e filhos criaram o Estabelecimento Vinícola Valmarino oficialmente em 15 de setembro 1997. O nome homenageia os antepassados oriundos de Cison de Valmarino, Treviso - Itália. Por ser uma empresa familiar, com produções limitadas, tem como meta principal a elaboração, com qualidade, de vinhos e espumantes diferenciados, que possibilitam prazer e satisfação a seus apreciadores. Utilizamos a tecnologia e os cuidados artesanais como ferramentas principais para revelar a qualidade das uvas e buscar o equilíbrio e a complexidade de nossos produtos.')


INSERT INTO wine (
  label,
  harvest_year,
  abv,
  aging_vessel_id,
  grape_variety_id,
  style_id,
  wine_region_id,
  winery_id)
VALUES
  ( 'Valmarino Sur Lie Nature',
    '2017',
    12.2,
    6,
    3,
    5,
    4,
    6
  )

INSERT INTO geographic_coordinates (latitude, longitude)
VALUES('-29.1074973', '-51.4491189')

INSERT INTO wine_store (name, city, geographic_coordinates_id)
VALUES('Vinicola Valmarino', 'Pinto Bandeira', 2)

INSERT INTO acquired_bottle (
  acquired_date,
  consumption_date,
  purchase_price,
  viewing_permission,
  description,
  wine_id,
  status_id,
  wine_store_id,
  appraisement_id,
  acquirer_id
)
VALUES
(
  '2020-11-25',
  null,
  140,
  1,
  null,
  4,
  1,
  2,
  null,
  1
)


INSERT INTO grape_variety(name, native_country, description)
VALUES(
  'Chardonnay',
  'France',
  'Chardonnay is one of the world’s most popular grapes, thanks to its number of different styles. You’ll find everything from lean and chalky to rich, creamy and aged in oak, and even some of the world''s finest sparkling wine too. Chardonnay is noted for its incredible versatility and range of flavors. This diversity can be attributed to the range of winemaking techniques and climates that it is subjected to.'
)

INSERT INTO country(name)
VALUES ('South Africa')

INSERT INTO region(name)
VALUES('Western Cape')

INSERT INTO wine_region (denomination_id, country_id, region_id, coordinates_id)
VALUES (null, 4, 4, null)

INSERT INTO winery(name, country, description)
VALUES ('African Pride Wines', 'South Africa', 'African Pride Wines was founded in 2002 with the vision of creating a range of wines that combine great value and character while staying true to South African style and terroir. We produce just over 100,000 cases per annum, sourcing grapes and wines from contracted producers in Stellenbosch, Worcester, Wellington, and Paarl.')


INSERT INTO wine (
  label,
  harvest_year,
  abv,
  aging_vessel_id,
  grape_variety_id,
  style_id,
  wine_region_id,
  winery_id)
VALUES
  ( 'Footprint The Long Walk',
    '2019',
    12.5,
    5,
    4,
    2,
    5,
    7
  )

INSERT INTO geographic_coordinates (latitude, longitude)
VALUES('-15.8429743', '-48.0255384')

INSERT INTO wine_store (name, city, geographic_coordinates_id)
VALUES('Supermercado Pão de Açucar', 'Águas Claras', 3)

INSERT INTO acquired_bottle (
  acquired_date,
  consumption_date,
  purchase_price,
  viewing_permission,
  description,
  wine_id,
  status_id,
  wine_store_id,
  appraisement_id,
  acquirer_id
)
VALUES
(
  '2023-03-20',
  null,
  30.00,
  1,
  null,
  5,
  3,
  3,
  null,
  1
)


INSERT INTO grape_variety(name, native_country, description)
VALUES(
  'Muscat',
  'Greece',
  'Moscatel is the name for Muscat in Spain and Portugal, and generally refers to Muscat of Alexandria. In Spain, Moscatel is usually vinified sweet and is most commonly grown in Malaga, Alicante, and Valencia. In Portugal, Moscatel can be used to craft the sweet wines of Madeira, and while it’s sometimes used in Spain’s sweet Sherry production, the Pedro Ximenez grape is more common.'
)

INSERT INTO denomination(name)
VALUES ('D.O. Valle del Itata')

INSERT INTO country(name)
VALUES ('Chile')

INSERT INTO region(name)
VALUES('South Region')

INSERT INTO subregion(name)
VALUES('Itata Valley')

INSERT INTO wine_region (denomination_id, country_id, region_id, subregion_id)
VALUES (null, 5, 5, 1)

UPDATE wine_region
SET denomination_id = 2
WHERE id = 6

INSERT INTO winery(name, country, description)
VALUES ('Bisquertt Family Vineyards', 'Chile', 'Founded in 1978 by Osvaldo Bisquertt and Soledad Urrutia, Viña Bisquertt is a family winery in the Colchagua Valley, one of the most renowned winemaking valleys in Chile. Our vineyards are located in the Marchihue zone, at the foot of the Coastal Mountains, and a short distance from the Pacific Ocean, both of which lend freshness and acidity to our wines.')


INSERT INTO wine (
  label,
  harvest_year,
  abv,
  aging_vessel_id,
  grape_variety_id,
  style_id,
  wine_region_id,
  winery_id)
VALUES
  ( 'Crazy Rows Bisquerttt Moscatel',
    '2022',
    12.5,
    1,
    5,
    2,
    6,
    8
  )


INSERT INTO acquired_bottle (
  acquired_date,
  consumption_date,
  purchase_price,
  viewing_permission,
  description,
  wine_id,
  status_id,
  wine_store_id,
  appraisement_id,
  acquirer_id
)
VALUES
(
  '2023-09-09',
  null,
  98.00,
  1,
  null,
  6,
  3,
  1,
  null,
  1
)


INSERT INTO region(name)
VALUES('Vale dos Vinhedos')


INSERT INTO wine_region (denomination_id, country_id, region_id, subregion_id)
VALUES (null, 3, 6, null)

INSERT INTO winery(name, country, description)
VALUES ('Videiras Carraro', 'Brazil', null)


INSERT INTO wine (
  label,
  harvest_year,
  abv,
  aging_vessel_id,
  grape_variety_id,
  style_id,
  wine_region_id,
  winery_id)
VALUES
  ( 'Videiras Carraro Brut Rosé',
    '2022',
    12.5,
    1,
    3,
    5,
    7,
    10
  )

INSERT INTO wine_store (name, city, geographic_coordinates_id)
VALUES('Loja Videiras Carraro', 'Vale dos Vinhedos', null)

INSERT INTO acquired_bottle (
  acquired_date,
  consumption_date,
  purchase_price,
  viewing_permission,
  is_gift,
  description,
  wine_id,
  status_id,
  wine_store_id,
  appraisement_id,
  acquirer_id
)
VALUES
(
  '2023-10-01',
  null,
  null,
  1,
  1,
  null,
  7,
  3,
  4,
  null,
  3
)


INSERT INTO grape_variety(name, native_country, description)
VALUES(
  'Melon de Bourgogne',
  'France',
  'Melon or Melon de Bourgogne is the grape of the Muscadet region of France, known for its lean, mineral, and saline driven white wines that pair famously with seafood.'
)

INSERT INTO denomination(name)
VALUES ('Muscadet Sèvre at Maine')

INSERT INTO country(name)
VALUES ('France')

INSERT INTO region(name)
VALUES('Loire Valley')

INSERT INTO subregion(name)
VALUES('Pays Nantais')

INSERT INTO geographic_coordinates (latitude, longitude)
VALUES('47.15223', '-1.3467306,17')

INSERT INTO wine_region (denomination_id, country_id, region_id, subregion_id)
VALUES (3, 7, 7, 2)

UPDATE wine_region
SET coordinates_id = 4
WHERE id = 8

INSERT INTO winery(name, country, description)
VALUES ('Famille Bougrier', 'France', 'First of all, he made it possible to achieve the dream of the previous generations, by widening the cover of the House to the whole Loire Valley from Sancerre to the “Pays Nantais” with the successive creations of our 3 wineries: “Les Caves Tourangelles” in the Touraine region in 1995, “ Les Caves de l’Angevine “in Anjou in 2000 and “ Les Caves de la Nantaise” in Muscadet in 2008')


INSERT INTO wine (
  label,
  harvest_year,
  abv,
  aging_vessel_id,
  grape_variety_id,
  style_id,
  wine_region_id,
  winery_id)
VALUES
  ( 'Muscadet Sèvre & Maine',
    '2020',
    12.00,
    5,
    6,
    2,
    8,
    11
  )



INSERT INTO acquired_bottle (
  acquired_date,
  consumption_date,
  purchase_price,
  viewing_permission,
  is_gift,
  description,
  wine_id,
  status_id,
  wine_store_id,
  appraisement_id,
  acquirer_id
)
VALUES
(
  '2023-07-05',
  null,
  148,
  1,
  0,
  null,
  8,
  3,
  1,
  null,
  1
)



INSERT INTO grape_variety(name, native_country, description)
VALUES(
  'Cinsault',
  'France',
  'One of the minor grapes found in Rhône blends and Provençal rosés; Cinsault delivers fresh, punchy reds that are just as floral as they are fruity.'
)

INSERT INTO wine_region (denomination_id, country_id, region_id, subregion_id)
VALUES (null, 5, 5, 1)

INSERT INTO winery(name, country, description)
VALUES ('Pedro Parra y Familia', 'Chile', 'Pedro Parra y Familia Wines is a project that was created by a man that is very serious about ‘Terroir’. Pedro has a master’s degree in precision agriculture and earned a Ph.D. for his work with terroir from the Paris Center of Agriculture. Pedro speaks of 2016 being a turning point in his winemaking career. This is where and when he realises that after many years of working with some of the great wine regions of the world, focusing on minerality, freshness, the pursuit of red fruit characteristics and complexity with minimal oak influence, will be the future motivation of Pedro Parra y Familia Wines.')


INSERT INTO wine (
  label,
  harvest_year,
  abv,
  aging_vessel_id,
  grape_variety_id,
  style_id,
  wine_region_id,
  winery_id)
VALUES
  ( 'Imaginador',
    '2019',
    12.00,
    7,
    7,
    1,
    9,
    12
  )


INSERT INTO acquired_bottle (
  acquired_date,
  consumption_date,
  purchase_price,
  viewing_permission,
  is_gift,
  description,
  wine_id,
  status_id,
  wine_store_id,
  appraisement_id,
  acquirer_id
)
VALUES
(
  '2023-11-15',
  null,
  209,
  1,
  0,
  null,
  9,
  3,
  1,
  null,
  1
)



INSERT INTO acquired_bottle (
  acquired_date,
  consumption_date,
  purchase_price,
  viewing_permission,
  is_gift,
  description,
  wine_id,
  status_id,
  wine_store_id,
  appraisement_id,
  acquirer_id
)
VALUES
(
  '2023-11-15',
  null,
  153,
  1,
  0,
  null,
  10,
  3,
  1,
  null,
  1
)


INSERT INTO grape_variety(name, native_country, description)
VALUES(
  'Malbec',
  'France',
  'Argentina’s most important variety came by way of France, where it’s commonly called Côt (sounds like “coat”). Wines are loved for their rich, dark fruit flavors and smooth chocolatey finish.'
)

INSERT INTO country(name)
VALUES ('Argentina')

INSERT INTO region(name)
VALUES('Cuyo')

INSERT INTO subregion(name)
VALUES('Mendonza')

UPDATE subregion
SET name = 'Valle de Uco'
WHERE id = 3

INSERT INTO wine_region (denomination_id, country_id, region_id, subregion_id)
VALUES (null, 9, 9, 3)

INSERT INTO winery(name, country, description)
VALUES ('4 Gatos Locos', 'Argentina', '4 gatos locos is a project created by Gabriel Bloise, Facundo Bonamaizon, Mariana and Juan Pelizzatti, winemaker, viticulturist and founders of Chakana (respectively), and it is based on a 20 ha vineyard in Alto Gualtallary, the most prominent growing region in Argentina. 4 Gatos locos is packaged with 4 different labels, reflecting the different personalities of the partners in this project. In an industry dominated by narcissistic efforts of self promotion and luxury, 4 gatos locos (a popular frase in argentina to represent “nobodies”) represents an authentic collective effort to develop outstanding wine that captures the personality and the potential of a place, which we strongly believe it is the best Mendoza has to offer.')


INSERT INTO wine (
  label,
  harvest_year,
  abv,
  aging_vessel_id,
  grape_variety_id,
  style_id,
  wine_region_id,
  winery_id)
VALUES
  ( '4 Gatos Locos Miau Malbec',
    '2021',
    14.00,
    6,
    8,
    1,
    11,
    14
  )


INSERT INTO acquired_bottle (
  acquired_date,
  consumption_date,
  purchase_price,
  viewing_permission,
  is_gift,
  description,
  wine_id,
  status_id,
  wine_store_id,
  appraisement_id,
  acquirer_id
)
VALUES
(
  '2023-11-15',
  null,
  158,
  1,
  0,
  null,
  11,
  3,
  1,
  null,
  1
)


INSERT INTO grape_variety(name, native_country, description)
VALUES(
  'Pinot Noir',
  'France',
  'Pinot Noir is the world’s most popular light-bodied red wine. It’s loved for its red fruit, flower, and spice aromas that are accentuated by a long, smooth finish.'
)

INSERT INTO denomination(name)
VALUES ('D.O. Aconcagua Costa')

INSERT INTO country(name)
VALUES ('Chile')

INSERT INTO region(name)
VALUES('Aconcagua Region')

INSERT INTO subregion(name)
VALUES('Aconcagua Valley')


INSERT INTO wine_region (denomination_id, country_id, region_id, subregion_id)
VALUES (5, 5, 10, 5)

INSERT INTO winery(name, country, description)
VALUES ('Arboleda', 'Chile', 'Arboleda, which means a grove of trees, is a tribute to the more than 1,450 hectares (3,583 acres) of native forest that surround its sustainably managed vineyards. Viña Arboleda was founded in 1999 by the Chilean vintner Eduardo Chadwick. The philosophy behind this project is to craft single-vineyard wines that reveal the purest expression of each unique terroir within its vineyards in the Aconcagua Valley.')


INSERT INTO wine (
  label,
  harvest_year,
  abv,
  aging_vessel_id,
  grape_variety_id,
  style_id,
  wine_region_id,
  winery_id)
VALUES
  ( 'Arboleda Pinot Noir',
    '2020',
    13.5,
    6,
    9,
    1,
    12,
    15
  )



INSERT INTO acquired_bottle (
  acquired_date,
  consumption_date,
  purchase_price,
  viewing_permission,
  is_gift,
  description,
  wine_id,
  status_id,
  wine_store_id,
  appraisement_id,
  acquirer_id
)
VALUES
(
  '2023-11-15',
  null,
  189,
  1,
  0,
  null,
  12,
  3,
  1,
  null,
  1
)


INSERT INTO grape_variety(name, native_country, description)
VALUES(
  'Touriga Nacional',
  'Portugal',
  'An increasingly important red from Portugal that was originally used in Port wines and is now featured in single varietal wines and red blends from the Douro Valley.'
)

INSERT INTO denomination(name)
VALUES ('Vinho Regional Alentejano')


INSERT INTO wine_region (denomination_id, country_id, region_id, subregion_id)
VALUES (6, 1, 1, null)


INSERT INTO wine (
  label,
  harvest_year,
  abv,
  aging_vessel_id,
  grape_variety_id,
  style_id,
  wine_region_id,
  winery_id)
VALUES
  ( 'Herdade do Rocim',
    '2021',
    14.0,
    6,
    10,
    1,
    13,
    4
  )

UPDATE wine
SET label = 'Herdade do Rocim Touriga Nacional'
WHERE id = 13


INSERT INTO wine_store (name, city, geographic_coordinates_id)
VALUES('Loja Videiras Carraro', 'Vale dos Vinhedos', null)

INSERT INTO acquired_bottle (
  acquired_date,
  consumption_date,
  purchase_price,
  viewing_permission,
  is_gift,
  description,
  wine_id,
  status_id,
  wine_store_id,
  appraisement_id,
  acquirer_id
)
VALUES
(
  '2023-11-15',
  null,
  199,
  1,
  0,
  null,
  13,
  3,
  1,
  null,
  1
)
