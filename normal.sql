use normalization;
create TABLE IF NOT EXISTS cities (
    id INT AUTO_INCREMENT,
    name VARCHAR(250),
    PRIMARY KEY (id)
);
create TABLE IF NOT EXISTS addresses (
    id INT AUTO_INCREMENT,
    street VARCHAR(250),
    number int,
    city_id int INT REFERENCES cities (id) ON DELETE RESTRICT,
    PRIMARY KEY (id)
);
create TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(250),
    last_name VARCHAR(250),
    email VARCHAR(250),
    address_id INT REFERENCES addresses (id) ON DELETE RESTRICT,
    PRIMARY KEY (id)
);