CREATE TRIGGER TR_LOG_acquired_bottle_INSERT ON acquired_bottle
FOR INSERT AS 
BEGIN
    DECLARE @user VARCHAR(255)
    SELECT @user = CAST(USER_NAME() AS VARCHAR(255))

    DECLARE @new_data VARCHAR(1000) 
    SET @new_data = (SELECT * FROM inserted FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)


    INSERT INTO LOG_acquired_bottle
    (
        acquired_bottle_id,
        event,
        event_time,
        logged_user,
        old_data,
        new_data
    )
    VALUES(
        (SELECT id FROM inserted),
        'INSERT',
        GETDATE(),
        @user,
        NULL,
        @new_data
    );
END

CREATE TRIGGER TR_LOG_acquired_bottle_UPDATE on acquired_bottle
FOR UPDATE AS
BEGIN
    DECLARE @user VARCHAR(255)
    SELECT @user = CAST(USER_NAME() AS VARCHAR(255))

    DECLARE @new_data VARCHAR(1000) 
    DECLARE @old_data VARCHAR(1000) 
    SET @new_data = (SELECT * FROM inserted FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)
    SET @old_data = (SELECT * FROM deleted FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)

    IF @new_data != @old_data
        INSERT INTO LOG_acquired_bottle
        (
            acquired_bottle_id,
            event,
            event_time,
            logged_user,
            old_data,
            new_data
        )
        VALUES(
            (SELECT id FROM inserted),
            'UPDATE',
            GETDATE(),
            @user,
            @old_data,
            @new_data
        );
END


CREATE TRIGGER TR_LOG_acquired_bottle_DELETE on acquired_bottle
FOR DELETE AS
BEGIN
    DECLARE @user VARCHAR(255)
    SET @user = CAST(USER_NAME() AS VARCHAR(255))

    DECLARE @old_data VARCHAR(1000) 
    SET @old_data = (SELECT * FROM deleted FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)
        
        INSERT INTO LOG_acquired_bottle 
        (
            acquired_bottle_id,
            event,
            event_time,
            logged_user,
            old_data,
            new_data
        )
        VALUES(
            (SELECT id FROM deleted),
            'DELETE',
            GETDATE(),
            @user,
            @old_data,
            NULL
        );
END



-------------------------------------------------------------------------

CREATE TRIGGER TR_LOG_acquired_bottle_INSERT ON acquired_bottle
FOR INSERT AS 
BEGIN
    DECLARE @user VARCHAR(255)
    SELECT @user = CAST(USER_NAME() AS VARCHAR(255))

    DECLARE @new_data VARCHAR(1000) 
    SET @new_data = (SELECT * FROM inserted FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)


    INSERT INTO LOG_acquired_bottle
    (
        acquired_bottle_id,
        event,
        event_time,
        logged_user,
        old_data,
        new_data
    )
    VALUES(
        (SELECT id FROM inserted),
        'INSERT',
        GETDATE(),
        @user,
        NULL,
        @new_data
    );
END

CREATE TRIGGER TR_LOG_acquired_bottle_UPDATE on acquired_bottle
FOR UPDATE AS
BEGIN
    DECLARE @user VARCHAR(255)
    SELECT @user = CAST(USER_NAME() AS VARCHAR(255))

    DECLARE @new_data VARCHAR(1000) 
    DECLARE @old_data VARCHAR(1000) 
    SET @new_data = (SELECT * FROM inserted FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)
    SET @old_data = (SELECT * FROM deleted FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)

    IF @new_data != @old_data
        INSERT INTO LOG_acquired_bottle
        (
            acquired_bottle_id,
            event,
            event_time,
            logged_user,
            old_data,
            new_data
        )
        VALUES(
            (SELECT id FROM inserted),
            'UPDATE',
            GETDATE(),
            @user,
            @old_data,
            @new_data
        );
END


CREATE TRIGGER TR_LOG_acquired_bottle_DELETE on acquired_bottle
FOR DELETE AS
BEGIN
    DECLARE @user VARCHAR(255)
    SET @user = CAST(USER_NAME() AS VARCHAR(255))

    DECLARE @old_data VARCHAR(1000) 
    SET @old_data = (SELECT * FROM deleted FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)
        
        INSERT INTO LOG_acquired_bottle 
        (
            acquired_bottle_id,
            event,
            event_time,
            logged_user,
            old_data,
            new_data
        )
        VALUES(
            (SELECT id FROM deleted),
            'DELETE',
            GETDATE(),
            @user,
            @old_data,
            NULL
        );
END