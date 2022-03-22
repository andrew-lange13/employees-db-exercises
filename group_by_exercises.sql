USE employees;

SELECT DISTINCT title FROM titles;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
   AND last_name LIKE '%E'
GROUP BY first_name, last_name
ORDER BY last_name;

SELECT COUNT(last_name), last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT COUNT(*), gender
FROM employees
WHERE first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya'
GROUP BY gender;

# TODO: top three most common job titles

SELECT titles.title, COUNT(titles.title)
FROM titles
GROUP BY title
ORDER BY COUNT(title) DESC
LIMIT 3;

# TODO: what is the lowest employee number for the first senior engineers in the company?

SELECT DISTINCT emp_no, title, COUNT(title), from_date
FROM titles
WHERE title = 'Senior Engineer'
GROUP BY emp_no, title, from_date
ORDER BY from_date

SELECT birth_date, COUNT(birth_date)
FROM employees
GROUP BY birth_date
ORDER BY COUNT(birth_date) DESC
