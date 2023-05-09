-- CREATE DATABASE IF NOT EXISTS meetup;
use meetup;
CREATE TABLE IF NOT EXISTS location (
    id INT AUTO_INCREMENT,
    city VARCHAR(250) NOT NULL,
    state VARCHAR(250),
    country VARCHAR(250),
    postal VARCHAR(250),
    address VARCHAR(250),
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS event (
    id INT AUTO_INCREMENT,
    event_name VARCHAR(250) NOT NULL,
    event_image_url VARCHAR(500),
    event_start_datetime DATETIME DEFAULT NOW(),
    event_description TEXT,
    event_max_members INT DEFAULT 0,
    event_age_rating VARCHAR(250),
    event_location_id INT,
    CONSTRAINT event_location_fkey FOREIGN KEY (event_location_id) REFERENCES location(id) ON DELETE
    SET NULL,
        PRIMARY KEY (id)
);