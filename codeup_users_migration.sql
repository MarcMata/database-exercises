USE codeup_test_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
                       id INT(11) NOT NULL AUTO_INCREMENT,
                       username VARCHAR(50) NOT NULL,
                       email VARCHAR(50) NOT NULL,
                       password VARCHAR(255) NOT NULL,
                       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                       updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                       PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;