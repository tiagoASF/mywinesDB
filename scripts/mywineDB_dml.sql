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
ALTER COLUMN description VARCHAR(500);

UPDATE aging_vessel
SET [description] = 'Oak barrels do three things to wine. They allow for oxygen exposure, which assists with maturation. They also provide tannins that give the wine structure. Finally, depending on the level of toast and age of the barrel, they also impart certain flavors. How these factors are managed depends on the winemaker.'
WHERE name = 'Oak'

INSERT INTO aging_vessel(name, description)
VALUES('Amphora', 'The wine is kind of softer. There’s sort of a rustic minerality that comes out, which is kind of cool, but while the desire with amphora is to lessen the vessel’s impact on the wine, it takes time - in a couple of years we’ve got a bit of a clay flavor impact on the wines')

INSERT INTO aging_vessel(name)
VALUES ('None')

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
