USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
  JOIN dept_emp as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
  FROM employees as e
JOIN dept_manager as dem
ON dem.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dem.dept_no
WHERE dem.emp_no = e.emp_no AND e.gender ='F';


SELECT title, count(*)
FROM titles as t
  JOIN employees as e
  ON e.emp_no = t.emp_no
  JOIN dept_emp as dept
  ON dept.emp_no = e.emp_no
WHERE dept.dept_no = 'd009'
GROUP BY title;


SELECT DISTINCT dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, salary
FROM departments as d
JOIN dept_manager as demp
ON demp.dept_no = d.dept_no
JOIN employees as e
ON e.emp_no = demp.emp_no
JOIN salaries as s
ON s.emp_no = demp.emp_no
ORDER BY dept_name;



