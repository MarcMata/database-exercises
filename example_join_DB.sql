USE join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

#REMOVE DUPLICATES IF THEY HAVE THE SAME NAME
TRUNCATE users;

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null),
                                             ('Elon', 'elon@example.com', null),
                                             ('Beyonce', 'beyonce@example.com', 1),
                                             ('Jay-Z', 'jay-z@example.com', 1),
                                             ('Kanye', 'yeezy@example.com', 1);
#EXERCISES
SELECT users.name,  roles.name AS role FROM users
    JOIN roles ON users.role_id = roles.id;

#LEFT JOIN
SELECT users.name,  roles.name AS role FROM users
    LEFT JOIN roles ON users.role_id = roles.id;
#RIGHT JOIN
SELECT users.name,  roles.name AS role FROM users
    RIGHT JOIN roles ON users.role_id = roles.id;

SELECT roles.name as role, count(users.id) AS 'role number' FROM roles LEFT JOIN users ON roles.id = users.role_id GROUP BY roles.name;