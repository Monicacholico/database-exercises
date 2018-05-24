USE employees;

SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
  GROUP BY last_name
ORDER BY last_name ;

SELECT
  CONCAT(first_name, ' ', last_name) AS 'fullName'
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY fullName;


SELECT last_name, count(last_name) as "number of people with this last name"
FROM employees
WHERE last_name Like '%q%'
AND last_name not LIKE '%qu%'
GROUP BY last_name;


SELECT count(*)
FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')
group by gender;