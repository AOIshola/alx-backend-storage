-- creates a table users with attributes id, email, name, and country
CREATE TABLE IF NOT EXISTS 'users' (
        'id' int NOT NULL AUTO_INCREMENT PRIMARY_KEY,
        'email' VARCHAR(255) NOT NULL UNIQUE,
        'name' VARCHAR(255),
)

DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE users ADD UNIQUE (email);
