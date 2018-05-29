USE employees;

SELECT e.first_name, e.last_name, e.birth_date
FROM dept_manager dm
JOIN employees e ON dm.emp_no = e.emp_no
LIMIT 10;


SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
)
LIMIT 10;

# a query has a join in it, but nothing
# from he joined table is being selected
# rewrite it with a subquery;

SELECT s.name, s.email, s.github_username
FROM students s
JOIN cohorts c ON s.cohort_id = c.id
WHERE c.name = 'Ulyses';

SELECT name, email, github_username
FROM students
WHERE cohort_id = (
  SELECT id FROM cohorts WHERE name = 'Ulyses'
);


SELECT
  CONCAT(e.last_name, ' ', e.first_name) as name
FROM employees e
JOIN dept_manager dm ON dm.emp_no = e.emp_no
JOIN departments d ON dm.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
AND dm.to_date > now();

# SELECT *
# FROM dept_manager
# WHERE to_date = 'd009'



SELECT * FROM departments
WHERE dept_name = 'Customer Service';

SELECT first_name, last_name
from employees;


SELECT *
FROM dept_manager
WHERE to_date > curdate()
AND dept_no = (
  SELECT dept_no FROM departments
  WHERE dept_name = 'Customer Service'
);

SELECT first_name, last_name
FROM employees
WHERE emp_no = (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > curdate()
        AND dept_no = (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Customer Service'
  )
);

SELECT emp_no
FROM dept_manager
WHERE to_date >= now() IN (
  SELECT hire_date
  FROM employees e
  WHERE e.emp_no = '101010'
);


SELECT first_name, last_name
FROM employees
WHERE hire_date = (
  SELECT emp_no
  FROM employees
  where emp_no = '101010'
);

SELECT hire_date
FROM employees
WHERE emp_no = '101010';

SELECT *
FROM employees
WHERE hire_date = emp_no = '101010';

SELECT hire_date
FROM employees
WHERE emp_no IN(
  SELECT first_name
  FROM employees
  WHERE emp_no = '101010'
);


SELECT first_name, last_name
FROM employees
WHERE hire_date IN (
  SELECT emp_no
  FROM employees
  WHERE emp_no = '101010'
);


SELECT *
FROM employees e
WHERE first_name = 'Aamod';

SELECT *
FROM titles t
  JOIN employees e ON t.emp_no = e.emp_no
WHERE first_name = 'Aamod'
ORDER BY title;


SELECT *
FROM dept_manager dm
JOIN employees e ON dm.emp_no = e.emp_no
WHERE gender = 'F';

SELECT first_name, last_name
FROM employees
WHERE hire_date = (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

SELECT title
FROM titles
WHERE emp_no IN (
  SELECT  emp_no
  FROM employees
  WHERE first_name = 'Aamod'
);

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > NOW()
)
  AND gender = 'F';


SELECT dept_name
FROM departments
where dept_no IN(
  SELECT dept_no
  FROM dept_manager
  WHERE to_date > NOW()
  AND emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'
  )
);

SELECT MAX(salary)
FROM salaries;

SELECT salary, emp_no
FROM salaries
ORDER BY salary DESC

SELECT first_name, last_name
FROM employees
WHERE emp_no = (
  SELECT emp_no
  FROM salaries
  WHERE salary = (
    SELECT MAX(salary)
    FROM salaries
  )
);




