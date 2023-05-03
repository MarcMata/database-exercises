USE employees;

#problem 2
SELECT distinct last_name FROM employees ORDER BY last_name desc;
#problem 3
SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5;
#problem 4
SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 45;