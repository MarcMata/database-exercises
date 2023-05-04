USE employees;
# problem 3
# Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.
SELECT CONCAT_WS(', ', first_name, first_name) AS full_name FROM employees;
# problem 4
SELECT birth_date AS DOB FROM employees;
# problem 5
# Update the query to format full name to include the employee number so it is formatted as 'employee number - last name, first name'.
SELECT CONCAT_WS(' - ', emp_no, last_name, first_name) AS full_name, birth_date AS DOB FROM employees LIMIT 10;