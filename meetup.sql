-- CREATE DATABASE IF NOT EXISTS meetup;
use meetup;
CREATE TABLE if NOT EXISTS event (
    id AUTO_INCREMENT,
    event_name VARCHAR(250) NOT NULL,
    event_image_url VARCHAR(500),
    event_start_datetime DATETIME DEFAULT NOW(),
    event_description TEXT,
    event_max_members INT DEFAULT 0,
    event_age_rating VARCHAR(250),
    event_location_id INT,
    PRIMARY KEY (id)
);