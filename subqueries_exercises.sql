USE employees;

SELECT CONCAT(employees.first_name, ' ', employees.last_name), employees.hire_date
FROM employees
WHERE hire_date IN (
    SELECT employees.hire_date
    FROM employees
    WHERE employees.employees.emp_no = '101010'
);

SELECT *
FROM titles
WHERE titles.emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE employees.first_name = 'Aamod'
          );

SELECT employees.first_name AS 'First Name', employees.last_name AS 'Last Name', employees.gender AS 'Gender'
FROM employees
WHERE employees.emp_no IN (
    SELECT dept_manager.emp_no
    FROM dept_manager
    WHERE employees.gender = 'F'
    AND dept_manager.to_date = '9999-01-01'
    )


