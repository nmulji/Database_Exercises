SELECT dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) as Department_Manager
FROM employees as e
JOIN dept_manager as dm
	ON dm.emp_no = e.emp_no
JOIN departments as d
	ON d.dept_no = dm.dept_no
WHERE dm.emp_no IN (
	SELECT emp_no
	FROM dept_manager
	WHERE to_date = '9999-01-01'
);

SELECT dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) as Department_Manager, gender
FROM employees as e
JOIN dept_manager as dm
	ON dm.emp_no = e.emp_no
JOIN departments as d
	ON d.dept_no = dm.dept_no
WHERE e.gender = 'F'
	AND dm.emp_no IN (
	SELECT emp_no
	FROM dept_manager
	WHERE to_date = '9999-01-01'
);

SELECT t.title as Title, COUNT(*) as Count
FROM employees as e
JOIN dept_emp as de
	ON de.emp_no = e.emp_no
JOIN titles as t
	ON t.emp_no = e.emp_no
JOIN departments as d
	ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01'
	AND d.dept_name = 'Customer Service'
GROUP BY t.title;

SELECT dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) as Department_Manager, salary
FROM employees as e
JOIN salaries as s
	ON s.emp_no = e.emp_no
JOIN dept_manager as dm
	ON dm.emp_no = e.emp_no
JOIN departments as d
	ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
GROUP BY d.dept_name
