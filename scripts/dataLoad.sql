USE mywinesDB
GO






INSERT INTO grape_variety(name, native_country, description)
VALUES(
  'Prosecco',
  'Italy',
  'Italy’s number one sparkling wine comes from Northeastern Italy and uses a different winemaking method than Champagne. The best Prosecco wines are noted from the hilly sub-region of Valdobbiadene.'
)

INSERT INTO denomination(name)
VALUES ('D.O. Terra Alta')

INSERT INTO country(name)
VALUES ('Spain')

INSERT INTO region(name)
VALUES('Catalonia')

INSERT INTO subregion(name)
VALUES('Terra Alta')

INSERT INTO geographic_coordinates (latitude, longitude)
VALUES('-15.8336754', '-48.0093457')

INSERT INTO wine_region (denomination_id, country_id, region_id, subregion_id)
VALUES (null, 12, 104, 102)

UPDATE wine_region
SET denomination_id = 102
WHERE id = 104

INSERT INTO winery(name, country, description)
VALUES ('Altavins', 'Spain', 'Our philosophy is simple; Identity, Honesty, Mediterranean Spirit. We take the utmost care when working with the grapes so that we may capture all of their virtues and, with minimum intervention, we harness their potential. What we seek to obtain is excellence in our wines and to extract the essence of this area with them.')


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
  ( 'Altavins Almodí Petit Blanc',
    '2020',
    13.5,
    5,
    3,
    2,
    104,
    106
  )

INSERT INTO wine_store (name, city, geographic_coordinates_id)
VALUES('Atacadão Dia a Dia', 'Águas Claras', 1002)

INSERT INTO taste_profile
VALUES(3, 4, 4, 3, 3)

INSERT INTO appraisement(evaluation_date, rating, impressions, taste_profile_id, appraiser_id)
VALUES(
  '2023-11-17',
  3,
  null,
  4,
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
  '2023-09-15',
  '2023-11-17',
  158,
  1,
  0,
  null,
  11,
  2,
  1,
  5,
  1
)










