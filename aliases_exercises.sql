USE employees;
# problem 3
SELECT CONCAT_WS(', ', first_name, first_name) AS full_name FROM employees;
# problem 4
SELECT birth_date AS DOB FROM employees;
# problem 5
SELECT CONCAT_WS(' - ', emp_no, last_name, first_name) AS full_name, birth_date AS DOB FROM employees LIMIT 10;