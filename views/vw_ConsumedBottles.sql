USE mywinesDB
GO

CREATE VIEW ConsumedBottles
AS
    SELECT
        aq.consumption_date,
        a.rating AS 'Rating',
        w.label AS 'Wine Bottle',
        w.harvest_year AS 'Harvest',
        w.abv AS 'Alcohol (%)',
        t.acidy AS 'Acidy',
        t.body AS 'Body',
        t.tannin AS 'Tannin',
        t.fruit AS 'Fruit',
        t.alcohol AS 'Alcohol',
        s.name AS 'Style',
        g.name AS 'Grape',
        c.name AS 'Country',
        winery.name AS 'Winery',
        ISNULL(aq.purchase_price, 0) AS 'R$',
        store.name AS 'Store',
        ISNULL(a.impressions, '-') AS 'Impressions'
        
    FROM acquired_bottle AS aq
    INNER JOIN wine_store AS store ON aq.wine_store_id = store.id 
    INNER JOIN wine AS w ON aq.wine_id = w.id
    INNER JOIN grape_variety AS g ON w.grape_variety_id = g.id
    INNER JOIN style AS s ON w.style_id = s.id
    INNER JOIN winery ON w.winery_id = winery.id
    INNER JOIN wine_region wr ON w.wine_region_id = wr.id
    INNER JOIN country c ON wr.country_id = c.id
    INNER JOIN appraisement a ON aq.appraisement_id = a.id
    INNER JOIN taste_profile t ON a.taste_profile_id = t.id
    WHERE status_id = 2 
GO


SELECT * FROM ConsumedBottles