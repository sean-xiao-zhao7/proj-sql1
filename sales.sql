USE sales;
CREATE TABLE sales (
    id INT AUTO_INCREMENT,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    date_fulfilled TIMESTAMP,
    customer_name VARCHAR(250) NOT NULL,
    product_name VARCHAR(250) NOT NULL,
    volume INT,
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (id)
)