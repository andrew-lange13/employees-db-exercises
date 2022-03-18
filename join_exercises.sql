USE employees;

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY dept_name;


