USE employees;
#select employees where firstname is irena vidya or maya;
#problem 2
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name ASC;
#problem 3
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name ASC, last_name ASC;
#problem 4
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name ASC, first_name ASC;
#problem 5
SELECT * FROM employees where last_name LIKE 'E%' ORDER BY emp_no ASC;
#problem 6
SELECT * FROM employees where last_name LIKE 'E%' ORDER BY emp_no DESC;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;
