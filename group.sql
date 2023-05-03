use restaurants;
create table if not exists tables (
    id int AUTO_INCREMENT,
    seats int,
    category VARCHAR(250),
    PRIMARY KEY (id)
);
create table if NOT EXISTS bookings (
    id int AUTO_INCREMENT,
    booking_date TIMESTAMP not null,
    guests int not null,
    billed boolean default false,
    tipped boolean default false,
    payment_id int,
    table_id int,
    CONSTRAINT payment_id_key FOREIGN KEY (payment_id) REFERENCES payment_methods(id) ON DELETE
    SET NULL,
        CONSTRAINT table_id_key FOREIGN KEY (table_id) REFERENCES tables(id) ON DELETE CASCADE,
        PRIMARY KEY (id)
);
create table if NOT EXISTS payment_methods (
    id int AUTO_INCREMENT,
    type VARCHAR(250),
    PRIMARY KEY (id)
)