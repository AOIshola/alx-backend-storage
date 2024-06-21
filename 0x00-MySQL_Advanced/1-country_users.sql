-- creates a table users with attributes id, email, name, and country
CREATE TABLE IF NOT EXISTS 'users' (
        'id' int NOT NULL AUTO_INCREMENT PRIMARY_KEY,
        'email' VARCHAR(255) NOT NULL UNIQUE,
        'name' VARCHAR(255),
	'country' ENUM('US', 'CO', 'TN') NOT NULL
)
