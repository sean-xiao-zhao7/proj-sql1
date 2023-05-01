use normalization;
-- INSERT INTO cities (name)
-- VALUES ('Berlin'),
--     ('New York'),
--     ('Cheshire');
-- INSERT INTO addresses (street, number, city_id)
-- VALUES ('Main St.', 123, 3),
--     ('Dou St.', 123, 1),
--     ('Ser St.', 123123, 1),
--     ('Fefie St.', 8949, 2);
INSERT INTO users (first_name, last_name, email, address_id)
VALUES ('Max', 'Scherzer', 'max.s@mets.com', 1),
    ('Gerit', 'Cole', 'g.cole@yanks.com', 2),
    ('Fram', 'Valdez', 'f.valdez@hous.com', 3),
    ('Alex', 'Wood', 'a.wood@retired.com', 4),
    ('Mitch', 'Keller', 'm.keller@pirates.com', 1)