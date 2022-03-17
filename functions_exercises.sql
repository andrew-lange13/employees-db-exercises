USE employees;

SELECT *
FROM employees
WHERE gender = 'M'
  AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
ORDER BY last_name DESC , first_name;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC ;

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E'
ORDER BY emp_no;


SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
ORDER BY emp_no;


SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25;


SELECT *, DATEDIFF(current_date(), hire_date)
FROM employees
WHERE MONTH(birth_date) = 12
    AND DAY(birth_date) = 25
    AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY hire_date DESC;
