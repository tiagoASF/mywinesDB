USE mywinesDB
GO

CREATE VIEW BottlesInWinery
AS
    SELECT
        w.label AS 'Wine Bottle',
        w.harvest_year AS 'Harvest',
        w.abv AS 'Alcohol (%)',
        s.name AS 'Style',
        g.name AS 'Grape',
        c.name AS 'Country',
        winery.name AS 'Winery',
        ISNULL(aq.purchase_price, 0) AS 'R$',
        store.name AS 'Store'
        
    FROM acquired_bottle AS aq
    INNER JOIN wine_store AS store ON aq.wine_store_id = store.id 
    INNER JOIN wine AS w ON aq.wine_id = w.id
    INNER JOIN grape_variety AS g ON w.grape_variety_id = g.id
    INNER JOIN style AS s ON w.style_id = s.id
    INNER JOIN winery ON w.winery_id = winery.id
    INNER JOIN wine_region wr ON w.wine_region_id = wr.id
    INNER JOIN country c ON wr.country_id = c.id
    WHERE status_id IN (1,3)
GO

SELECT * FROM BottlesInWinery
