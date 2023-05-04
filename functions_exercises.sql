USE employees;

# Problem 2
SELECT * FROM employees where last_name LIKE 'E%' AND CONCAT(first_name, last_name);
# Problem 3
SELECT * FROM employees WHERE birth_date LIKE '%12-25';
# PROBLEM 4
SELECT * FROM employees WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%';
# PROBLEM 5
SELECT * FROM employees WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%' ORDER BY birth_date ASC, hire_date DESC LIMIT 1;
# PROBLEM 6
SELECT DATEDIFF(NOW(), hire_date), employees.* FROM employees WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12 AND YEAR(hire_date) LIKE '199%' ORDER BY DATEDIFF(hire_date, NOW()) DESC;
