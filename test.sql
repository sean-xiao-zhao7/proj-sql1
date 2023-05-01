use test;
-- DROP TABLE IF EXISTS users;
-- DROP TABLE IF EXISTS employers;
-- DROP TABLE IF EXISTS conversation;
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT,
    full_name varchar(300) not null,
    yearly_salary INT CHECK (yearly_salary > 0),
    current_status ENUM('self-employed', 'employed', 'unemployed'),
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS companies (
    id INT AUTO_INCREMENT,
    name VARCHAR(250) NOT NULL,
    address VARCHAR(300),
    revenue FLOAT CHECK (revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS conversations (
    id INT AUTO_INCREMENT,
    user_id INT,
    company_id INT,
    message TEXT NOT NULL,
    PRIMARY KEY (id)
);