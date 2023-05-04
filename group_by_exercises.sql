USE employees;
# Problem 2
SELECT DISTINCT title FROM titles;
# Problem 3
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%e';
# Problem 4
SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'E%e';
# Problem 5
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
# Problem 6
SELECT DISTINCT last_name, COUNT(last_name) FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name ORDER BY COUNT(last_name) DESC;
# Problem 7
SELECT gender, COUNT(*) as num_employees FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender ORDER BY num_employees DESC;

