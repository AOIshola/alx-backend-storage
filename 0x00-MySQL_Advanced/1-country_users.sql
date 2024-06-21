-- creates a table users with attributes id, email, name, and country
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') NOT NULL,
    PRIMARY KEY (id)
);
