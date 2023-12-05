CREATE DATABASE mywinesDB
GO

USE mywinesDB
GO

CREATE TABLE denomination
(
    id SMALLINT IDENTITY(1,1),
    name VARCHAR(30) NOT NULL UNIQUE,
    CONSTRAINT PK_denomination PRIMARY KEY(id)
)
CREATE INDEX IX_denomination ON denomination(name)


CREATE TABLE geographic_coordinates
(
    id INT IDENTITY(1,1),
    latitude VARCHAR(50) NOT NULL,
    longitude VARCHAR(50) NOT NULL,
    CONSTRAINT PK_coordinates PRIMARY KEY(id)
)


CREATE TABLE winery
(
    id SMALLINT IDENTITY(1,1),
    name NVARCHAR(30) NOT NULL UNIQUE,
    country VARCHAR(30) NOT NULL,
    description VARCHAR(300),
    CONSTRAINT PK_winery PRIMARY KEY(id)
)
CREATE INDEX IX_winery_name ON winery(name)

CREATE TABLE style
(
    id TINYINT IDENTITY(1,1),
    name VARCHAR(20) NOT NULL UNIQUE,
    CONSTRAINT PK_style PRIMARY KEY(id)
)
CREATE INDEX IX_style_name ON style(name)


CREATE TABLE grape_variety
(
    id SMALLINT IDENTITY(1,1),
    name VARCHAR(30) NOT NULL UNIQUE,
    native_country VARCHAR(30),
    description VARCHAR(500),
    CONSTRAINT PK_grape PRIMARY KEY(id)
)
CREATE INDEX IX_grape_name ON grape_variety(name)

CREATE TABLE country
(
    id TINYINT IDENTITY(1,1),
    name VARCHAR(100) UNIQUE NOT NULL,
    CONSTRAINT PK_country PRIMARY KEY(id)
)
CREATE INDEX IX_country_name ON country(name)

CREATE TABLE region
(
    id SMALLINT IDENTITY(1,1),
    name VARCHAR(50) UNIQUE NOT NULL,
    CONSTRAINT PK_region PRIMARY KEY(id)
)
CREATE INDEX IX_region_name ON region(name)

CREATE TABLE subregion
(
    id SMALLINT IDENTITY(1,1),
    name VARCHAR(50) UNIQUE NOT NULL,
    CONSTRAINT PK_subregion PRIMARY KEY(id)
)
CREATE INDEX IX_subregion_name ON subregion(name)

CREATE TABLE wine_region
(
    id SMALLINT IDENTITY(1,1),
    country_id TINYINT NOT NULL,
    region_id SMALLINT NOT NULL,
    subregion_id SMALLINT,
    denomination_id SMALLINT,
    coordinates_id INT,
    CONSTRAINT PK_wine_region PRIMARY KEY(id),
    CONSTRAINT FK_wine_region_country FOREIGN KEY(country_id) 
        REFERENCES country(id),
    CONSTRAINT FK_wine_region_region FOREIGN KEY(region_id) 
        REFERENCES region(id),
    CONSTRAINT FK_wine_region_subregion FOREIGN KEY(subregion_id) 
        REFERENCES subregion(id),
    CONSTRAINT FK_wine_region_denomination FOREIGN KEY(denomination_id) 
        REFERENCES denomination(id),
    CONSTRAINT FK_wine_region_coordinates FOREIGN KEY(coordinates_id) 
        REFERENCES geographic_coordinates(id)
)

CREATE TABLE aging_vessel
(
    id TINYINT IDENTITY(1,1),
    name VARCHAR(30) UNIQUE NOT NULL,
    description VARCHAR(500),
    CONSTRAINT PK_aging_vessel PRIMARY KEY(id)
)
CREATE INDEX IX_aging_vessel_name ON aging_vessel(name)

CREATE TABLE wine
(
    id INT IDENTITY(1,1),
    label NVARCHAR(100) NOT NULL,
    harvest_year CHAR(4) NOT NULL,
    abv NUMERIC(3,1) NOT NULL,
    aging_vessel_id TINYINT NOT NULL,
    grape_variety_id SMALLINT NOT NULL,
    style_id TINYINT NOT NULL,
    wine_region_id SMALLINT NOT NULL,
    winery_id SMALLINT NOT NULL,
    CONSTRAINT PK_wine PRIMARY KEY(id),
    CONSTRAINT FK_wine_aging_vessel FOREIGN KEY(aging_vessel_id)
        REFERENCES aging_vessel(id),
    CONSTRAINT FK_wine_grape_variety FOREIGN KEY(grape_variety_id)
        REFERENCES grape_variety(id),
    CONSTRAINT FK_wine_style FOREIGN KEY(style_id)
        REFERENCES style(id),
    CONSTRAINT FK_wine_wine_region FOREIGN KEY(wine_region_id)
        REFERENCES wine_region(id),
    CONSTRAINT FK_wine_winery FOREIGN KEY(winery_id)
        REFERENCES winery(id)
)
CREATE INDEX IX_wine_label ON wine(label)
CREATE INDEX IX_wine_harvest_year ON wine(harvest_year)
CREATE INDEX IX_wine_abv ON wine(abv)



CREATE TABLE wine_store
(
    id INT IDENTITY(1,1),
    name VARCHAR(30) NOT NULL,
    city VARCHAR(30) NOT NULL,
    country VARCHAR(100) NOT NULL DEFAULT('Brazil'),
    geographic_coordinates_id INT,
    CONSTRAINT PK_wine_store PRIMARY KEY(id),
    CONSTRAINT FK_wine_store_coordinates FOREIGN KEY(geographic_coordinates_id)
        REFERENCES geographic_coordinates(id)
)
CREATE INDEX IX_wine_store_name on wine_store(name)


CREATE TABLE status
(
    id TINYINT IDENTITY(1,1),
    status_description VARCHAR(20) NOT NULL UNIQUE,
    CONSTRAINT PK_status PRIMARY KEY(id)
)
CREATE INDEX IX_status ON status(status_description)


CREATE TABLE taste_profile
(
    id INT IDENTITY(1,1),
    acidy TINYINT NOT NULL CHECK(acidy >= 1 AND acidy <= 5),
    body TINYINT NOT NULL CHECK(body >= 1 AND body <= 5),
    tannin TINYINT NOT NULL CHECK(tannin >= 1 AND tannin <= 5),
    fruit TINYINT NOT NULL CHECK(fruit >= 1 AND fruit <= 5),
    alcohol TINYINT NOT NULL CHECK(alcohol >= 1 AND alcohol <= 5),
    CONSTRAINT PK_taste_profile PRIMARY KEY(id)
)

CREATE TABLE image
(
    id INT IDENTITY(1,1),
    slug VARCHAR(100) NOT NULL UNIQUE,
    date DATETIME2 DEFAULT(GETDATE()),
    CONSTRAINT PK_image PRIMARY KEY(id)
)


CREATE TABLE social_media
(
    id TINYINT IDENTITY(1,1),
    name VARCHAR(50) NOT NULL UNIQUE,
    icon_id INT NOT NULL UNIQUE,
    CONSTRAINT PK_social_media PRIMARY KEY(id),
    CONSTRAINT FK_social_media_image FOREIGN KEY(icon_id)
        REFERENCES image(id) 
)


CREATE TABLE enophile
(
    id INT IDENTITY(1,1),
    name NVARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(320) NOT NULL UNIQUE,
    biography NVARCHAR(300),
    birth_date DATE NOT NULL CHECK(YEAR(GETDATE()) - YEAR(birth_date) >= 18),
    register_at DATETIME2 DEFAULT(GETDATE()),
    deactivate_date DATETIME2,
    is_active BIT NOT NULL DEFAULT(1),
    profile_image_id INT,
    CONSTRAINT PK_enophile PRIMARY KEY(id),
    CONSTRAINT FK_enophile_image FOREIGN KEY(profile_image_id)
        REFERENCES image(id) ON DELETE CASCADE
)
CREATE INDEX IX_enophile_name ON enophile(name)
CREATE INDEX IX_enophile_email ON enophile(email)


CREATE TABLE social_media_enophile
(
    enophile_id INT NOT NULL,
    social_media_id TINYINT NOT NULL,
    url VARCHAR(150) NOT NULL UNIQUE,
    CONSTRAINT PK_social_media_enophile PRIMARY KEY(enophile_id, social_media_id),
    CONSTRAINT FK_social_media_enophile FOREIGN KEY(enophile_id)
        REFERENCES enophile(id),
    CONSTRAINT FK_social_media_enophile_social_media FOREIGN KEY(social_media_id)
        REFERENCES social_media(id)
)

CREATE TABLE fraternity
(
    id INT IDENTITY(1,1),
    name NVARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(300) NOT NULL,
    administrator_id INT NOT NULL,
    image_id INT NOT NULL,
    created_at DATETIME2 DEFAULT(GETDATE()),
    deactivate_date DATETIME2,
    is_active BIT NOT NULL DEFAULT(1),
    profile_image_id INT,
    CONSTRAINT PK_fraternity PRIMARY KEY(id),
    CONSTRAINT FK_fraternity_administrator FOREIGN KEY(administrator_id)
        REFERENCES enophile(id)
)
CREATE INDEX IX_fraternity_name ON fraternity(name)


CREATE TABLE fraternity_member
(
    fraternity_id INT NOT NULL,
    member_id INT NOT NULL,
    join_date DATETIME2 DEFAULT(GETDATE()),
    disjoin_date DATETIME2,
    CONSTRAINT PK_fraternity_member PRIMARY KEY(fraternity_id, member_id),
    CONSTRAINT FK_fraternity_member_fraternity FOREIGN KEY(fraternity_id)
        REFERENCES fraternity(id),
    CONSTRAINT FK_fraternity_member_member FOREIGN KEY(member_id)
        REFERENCES enophile(id)
)


CREATE TABLE appraisement
(
    id INT IDENTITY(1,1),
    evaluation_date DATE DEFAULT(GETDATE()),
    rating TINYINT NOT NULL CHECK(rating >= 1 AND rating <= 10),
    impressions VARCHAR(300),
    taste_profile_id INT NOT NULL,
    appraiser_id INT NOT NULL,
    CONSTRAINT PK_appraisement PRIMARY KEY(id),
    CONSTRAINT FK_appraisement_taste_profile FOREIGN KEY(taste_profile_id)
        REFERENCES taste_profile(id),
    CONSTRAINT FK_appraisement_appraiser FOREIGN KEY(appraiser_id)
        REFERENCES enophile(id)
)
CREATE INDEX IX_appraisement_rating ON appraisement(rating)


CREATE TABLE acquired_bottle
(
    id INT IDENTITY(1,1),
    acquired_date DATE NOT NULL,
    consumption_date DATE,
    purchase_price SMALLMONEY,
    viewing_permission TINYINT DEFAULT(1),
    is_gift BIT DEFAULT(0),
    description VARCHAR(300),
    wine_id INT NOT NULL,
    status_id TINYINT NOT NULL,
    wine_store_id INT,
    appraisement_id INT,
    acquirer_id INT NOT NULL,
    CONSTRAINT PK_acquired_bottle PRIMARY KEY(id),
    CONSTRAINT FK_acquired_bottle_wine FOREIGN KEY(wine_id)
        REFERENCES wine(id),
    CONSTRAINT FK_acquired_bottle_status FOREIGN KEY(status_id)
        REFERENCES status(id),
    CONSTRAINT FK_acquired_bottle_wine_store FOREIGN KEY(wine_store_id)
        REFERENCES wine_store(id),
    CONSTRAINT FK_acquired_bottle_appraisement FOREIGN KEY(appraisement_id)
        REFERENCES appraisement(id),
    CONSTRAINT FK_acquired_bottle_acquirer FOREIGN KEY(acquirer_id)
        REFERENCES enophile(id)
)


CREATE TABLE feedback
(
    id INT IDENTITY(1,1),
    like_or_dislike BIT NOT NULL,
    date DATE DEFAULT(GETDATE()),
    appraisement_id INT NOT NULL,
    appraiser_id INT NOT NULL,
    CONSTRAINT PK_feedback PRIMARY KEY(id),
    CONSTRAINT FK_feedback_appraisement FOREIGN KEY(appraisement_id)
        REFERENCES appraisement(id),
    CONSTRAINT FK_feedback_appraiser FOREIGN KEY(appraiser_id)
        REFERENCES enophile(id)
)


CREATE TABLE photo
(
    id INT IDENTITY(1,1),
    comments VARCHAR(300),
    slug VARCHAR(100) NOT NULL UNIQUE,
    inserted_at DATE DEFAULT(GETDATE()),
    owner_id INT NOT NULL,
    CONSTRAINT PK_photo PRIMARY KEY(id),
    CONSTRAINT FK_photo_owner FOREIGN KEY(owner_id)
        REFERENCES enophile(id)
)


CREATE TABLE bottle_photo
(
    photo_id INT NOT NULL,
    acquired_bottle_id INT NOT NULL,
    CONSTRAINT PK_bottle_photo PRIMARY KEY(photo_id, acquired_bottle_id),
    CONSTRAINT FK_bottle_photo_photo FOREIGN KEY(photo_id)
        REFERENCES photo(id),
    CONSTRAINT FK_bottle_photo_bottle FOREIGN KEY(acquired_bottle_id)
        REFERENCES acquired_bottle(id)
)
