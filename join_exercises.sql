USE employees;

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY dept_name;

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
         JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
         JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F'
ORDER BY dept_name;

SELECT titles.title AS 'title', COUNT(titles.emp_no) AS 'Total'
FROM titles
JOIN dept_emp ON titles.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_emp.dept_no = 'd009'
AND titles.to_date = '9999-01-01'
AND dept_emp.to_date = '9999-01-01'
GROUP BY titles.title;

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager', salaries.salary AS 'Salary'
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date = '9999-01-01'
AND salaries.to_date = '9999-01-01'
ORDER BY departments.dept_name;
