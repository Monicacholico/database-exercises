USE employees;
SELECT *
FROM employees
WHERE (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
AND gender = 'M'
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
AND gender = 'M'
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY emp_no;


SELECT *
FROM employees
WHERE hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC;

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE birth_date
LIKE '%-12-25'
AND( hire_date BETWEEN '1990-01-01' AND '1999-12-31'
) ORDER BY birth_date, hire_date DESC ;

SELECT *
FROM employees
WHERE last_name
LIKE '%q%'
AND NOT LIKE '%qu%';