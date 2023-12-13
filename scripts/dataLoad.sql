USE mywinesDB
GO

INSERT INTO enophile (name, user_name, email, biography, birth_date)
VALUES
        ('Tiago Fialho',
         'Tiago',
         'tiago.chem@gmail.com',
         '"Wine improves with age. the older i get, the better I like it."',
          '1982-03-10'),
        ('Fabiana Barbosa',
         'Biazinha',
         'biazinhaa2@hotmail.com',
         '"I cook with wine, sometimes I even add it to the food"',
          '1986-10-26')


INSERT INTO fraternity (name, administrator_id)
VALUES ('Home Sweet Home', 1)

INSERT INTO fraternity_member (fraternity_id, member_id)
VALUES
    (2, 1), (2, 3)




INSERT INTO grape_variety(name, native_country, description)
VALUES(
  'Touriga Nacional',
  'Portugal',
  'An increasingly important red from Portugal that was originally used in Port wines and is now featured in single varietal wines and red blends from the Douro Valley.'
)

INSERT INTO denomination(name)
VALUES ('Vinho Regional Alentejano')

INSERT INTO country(name)
VALUES ('Chile')

INSERT INTO region(name)
VALUES('Alentejo')

INSERT INTO subregion(name)
VALUES('')

INSERT INTO geographic_coordinates (latitude, longitude)
VALUES('47.15223', '-1.3467306,17')

INSERT INTO wine_region (denomination_id, country_id, region_id, subregion_id)
VALUES (6, 1, 1, null)

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








