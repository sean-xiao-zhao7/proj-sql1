USE sales;
CREATE TABLE IF NOT EXISTS sales (
    id INT AUTO_INCREMENT,
    date_created TIMESTAMP DEFAULT (CURRENT_TIMESTAMP),
    date_fulfilled TIMESTAMP,
    customer_name VARCHAR(250) NOT NULL,
    product_name VARCHAR(250) NOT NULL,
    volume NUMERIC(10, 3) NOT NULL CHECK (volume >= 0),
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (id)
);
-- ALTER TABLE sales
-- MODIFY volume NUMERIC(10,3) NOT NULL CHECK (volume >= 0);
-- INSERT INTO sales (
--         customer_name,
--         product_name,
--         volume,
--         is_recurring
--     )
-- VALUES ('Sean', 'Book', 12.99, TRUE);
INSERT INTO sales (
        date_fulfilled,
        customer_name,
        product_name,
        volume,
        is_recurring,
        is_disputed
    )
VALUES (
        NULL,
        'Learning Inc.',
        'Course bundle',
        4012.42,
        FALSE,
        FALSE
    ),
    (
        '2022-02-12',
        'Oil Inc.',
        'Trucks',
        512300.42,
        FALSE,
        TRUE
    );