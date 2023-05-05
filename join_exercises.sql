USE employees;

#write a query that shows each department along with the name of the current manager for that department.
SELECT dept_name as department, CONCAT(first_name, ' ', last_name) as name
FROM departments d
    JOIN dept_manager dm ON d.dept_no = dm.dept_no
    JOIN employees e ON dm.emp_no = e.emp_no
AND dm.to_date > NOW();

# Find the name of all departments currently managed by women
SELECT dept_name as department, CONCAT(first_name, ' ', last_name) as name
FROM departments d
         JOIN dept_manager dm ON d.dept_no = dm.dept_no
         JOIN employees e ON dm.emp_no = e.emp_no
    AND dm.to_date > NOW()
    AND e.gender = 'F';
#Find the current titles of employees currently working in the Customer Service department.
SELECT title as JobTitle, COUNT(title) as Total
    FROM dept_emp de
        JOIN employees e on de.emp_no = e.emp_no
        JOIN departments d on de.dept_no = d.dept_no
        JOIN titles t on e.emp_no = t.emp_no
            WHERE d.dept_name = 'Customer Service'
        AND de.to_date > NOW() AND t.to_date > NOW()
GROUP BY title;

# Find the current salary of all current managers.
SELECT dept_name as department, CONCAT(first_name, ' ', last_name) as name, salary as Salary
FROM departments d
         JOIN dept_manager dm ON d.dept_no = dm.dept_no
         JOIN employees e ON dm.emp_no = e.emp_no
         JOIN salaries s on e.emp_no = s.emp_no
    AND dm.to_date > NOW() AND s.to_date > NOW()
ORDER BY dept_name ASC;

#Bonus Find the names of all current employees, their department name, and their current manager's name



SELECT CONCAT(e.first_name, ' ', e.last_name)as name, dept_name as Department,CONCAT(managers_name.first_name, ' ', managers_name.last_name) as Manager
FROM dept_emp de
         JOIN employees e on de.emp_no = e.emp_no
         JOIN departments d on de.dept_no = d.dept_no
         JOIN titles t on e.emp_no = t.emp_no
         JOIN dept_manager dm on dm.emp_no = e.emp_no
         JOIN employees as managers_name on managers_name.emp_no = dm.emp_no
  AND de.to_date > NOW() AND t.to_date > NOW();

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Employee', departments.dept_name AS 'Department', CONCAT(Managers_names.first_name, ' ', Managers_names.last_name) AS 'Manager'
FROM employees
         JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
         JOIN dept_manager ON dept_manager.dept_no = dept_emp.dept_no
         JOIN departments ON departments.dept_no = dept_emp.dept_no
         JOIN employees AS Managers_names ON Managers_names.emp_no = dept_manager.emp_no
WHERE dept_emp.to_date > NOW() AND dept_manager.to_date > NOW()