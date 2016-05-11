SELECT first_name, last_name, hire_date, emp_no
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

SELECT title, first_name
FROM titles as t
JOIN employees as e
	ON e.emp_no = t.emp_no
WHERE e.emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod'
);

SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
	SELECT emp_no FROM employees WHERE first_name = 'Aamod'
);

SELECT dm.emp_no, CONCAT(e.first_name, ' ', e.last_name) as Manager_Name, gender
FROM dept_manager as dm
JOIN employees as e
	ON e.emp_no = dm.emp_no
WHERE e.emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE gender = 'F'
);

SELECT CONCAT(first_name, ' ', last_name) as Manager_Name, gender
FROM employees
WHERE gender = 'F'
	AND emp_no IN (
	SELECT emp_no
	FROM dept_manager
	WHERE to_date = '9999-01-01'
);