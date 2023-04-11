CREATE OR ALTER PROCEDURE usp_AddLocation
    @Country nvarchar(20),
    @Region nvarchar(50) = null,
    @Subregion nvarchar(50) = null
AS
BEGIN
    BEGIN
        DECLARE @countryId TINYINT
        SET @countryId = (SELECT country.id
                            FROM country
                            WHERE country.country_name = @Country);
    END
    IF @Region IS NOT NULL
        BEGIN
            DECLARE @regionId TINYINT
            SET @regionId = (SELECT region.id 
                             FROM region
                             WHERE region.region_name = @Region);
        END
    ELSE 
        BEGIN 
            SET @regionId = null
        END
    IF @Subregion IS NOT NULL
        BEGIN
            DECLARE @subregionId TINYINT
            SET @subregionId = (SELECT subregion.id 
                             FROM subregion
                             WHERE subregion.subregion_name = @Subregion);
        END
    ELSE 
        BEGIN 
            SET @subregionId = null
        END

    BEGIN
        INSERT INTO [location] VALUES (@countryId, @regionId, @subregionId)
    END
END
GO
