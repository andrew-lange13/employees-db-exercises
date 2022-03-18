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


