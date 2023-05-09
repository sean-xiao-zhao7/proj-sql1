-- CREATE DATABASE IF NOT EXISTS meetup;
use meetup;
-- many to many, user to event
CREATE TABLE IF NOT EXISTS user_event (
    id INT AUTO_INCREMENT,
    user_id INT,
    event_id INT,
    CONSTRAINT user_event_user_fkey FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,
    CONSTRAINT user_event_event_fkey FOREIGN KEY (event_id) REFERENCES event(id) ON DELETE
    SET NULL,
        PRIMARY KEY (id)
);
-- user account
CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR(250) NOT NULL,
    email VARCHAR(250) NOT NULL,
    type VARCHAR(250) DEFAULT 'normal_user',
    PRIMARY KEY (id)
);
-- list of events
CREATE TABLE IF NOT EXISTS event_category (
    id INT AUTO_INCREMENT,
    event_category_name VARCHAR(250) NOT NULL,
    PRIMARY KEY (id)
);
-- single location/address, belong to many events
CREATE TABLE IF NOT EXISTS location (
    id INT AUTO_INCREMENT,
    city VARCHAR(250) NOT NULL,
    state VARCHAR(250),
    country VARCHAR(250),
    postal VARCHAR(250),
    address VARCHAR(250),
    PRIMARY KEY (id)
);
-- single event
CREATE TABLE IF NOT EXISTS event (
    id INT AUTO_INCREMENT,
    event_name VARCHAR(250) NOT NULL,
    event_image_url VARCHAR(500),
    event_start_datetime DATETIME DEFAULT NOW(),
    event_description TEXT,
    event_max_members INT DEFAULT 0,
    event_age_rating VARCHAR(250),
    event_location_id INT,
    event_category_id INT,
    CONSTRAINT event_location_fkey FOREIGN KEY (event_location_id) REFERENCES location(id) ON DELETE
    SET NULL,
        CONSTRAINT event_category_fkey FOREIGN KEY (event_category_id) REFERENCES event_category(id) ON DELETE
    SET NULL,
        PRIMARY KEY (id)
);