USE sales;
CREATE TABLE IF NOT EXISTS sales (
    id INT AUTO_INCREMENT,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    date_fulfilled TIMESTAMP,
    customer_name VARCHAR(250) NOT NULL,
    product_name VARCHAR(250) NOT NULL,
    volume NUMERIC(10,3) NOT NULL CHECK (volume >= 0),
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (id)
);

-- ALTER TABLE sales
-- MODIFY volume NUMERIC(10,3) NOT NULL CHECK (volume >= 0);