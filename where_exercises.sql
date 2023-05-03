USE employees;
#select employees where firstname is irena vidya or maya;

# SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT * FROM employees WHERE ((first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND (gender = 'M'));

SELECT * FROM employees where last_name LIKE 'E%';

SELECT * FROM employees where last_name like '%q%';
SELECT * FROM employees where last_name like '%q%' AND NOT last_name LIKE '%qu%';