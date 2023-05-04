USE employees;


#how to join, basic join inner join
SELECT CONCAT(employees.first_name, ' ', employees.last_name) as name,  salaries.salary AS salary FROM employees JOIN salaries ON employees.emp_no = salaries.emp_no;

#left join
USE codeup_test_db;

INSERT INTO users (username, email, password)
VALUES
    ('john_doe', 'john_doe@example.com', 'password123'),
    ('jane_smith', 'jane_smith@example.com', 'password456'),
    ('sam_jones', 'sam_jones@example.com', 'password789'),
    ('joe_brown', 'joe_brown@example.com', 'password1234'),
    ('mary_white', 'mary_white@example.com', 'password5678'),
    ('david_kim', 'david_kim@example.com', 'password9012'),
    ('lisa_green', 'lisa_green@example.com', 'password3456'),
    ('steve_taylor', 'steve_taylor@example.com', 'password7890'),
    ('amy_harris', 'amy_harris@example.com', 'password12345'),
    ('jack_smith', 'jack_smith@example.com', 'password67890'),
    ('katie_lee', 'katie_lee@example.com', 'password123456'),
    ('mike_johnson', 'mike_johnson@example.com', 'password789012'),
    ('sara_davis', 'sara_davis@example.com', 'password345678'),
    ('chris_wilson', 'chris_wilson@example.com', 'password901234'),
    ('jessica_lee', 'jessica_lee@example.com', 'password567890');

CREATE TABLE roles (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO roles (name) VALUES ('admin'), ('author'), ('reviewer'), ('commenter');

ALTER TABLE users ADD column
