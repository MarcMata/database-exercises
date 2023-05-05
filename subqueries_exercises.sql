USE employees;
# Find all the employees with the same hire date as employee 101010 using a subquery.

SELECT * FROM employees where hire_date = (SELECT hire_date FROM employees WHERE emp_no = 101010);

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

SELECT * FROM titles WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');


# Find all the current department managers that are female.
# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+

SELECT first_name, last_name FROM employees e
                             where emp_no IN
(SELECT emp_no FROM dept_manager WHERE gender = 'F' AND to_date > NOW());