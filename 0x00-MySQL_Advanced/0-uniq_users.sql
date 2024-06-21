-- Create the table users if it doesn't already exist
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

ALTER TABLE users ADD UNIQUE (email);
