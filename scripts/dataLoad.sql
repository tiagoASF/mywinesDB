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