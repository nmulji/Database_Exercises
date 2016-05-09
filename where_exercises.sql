SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE gender = 'M'
	AND (
	first_name = 'Irena'
		OR first_name = 'Vidya'
		OR first_name = 'Maya'
);

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
	AND (
	last_name LIKE '%e'
);

SELECT hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
	AND (
	birth_date LIKE '%-12-25'
);

SELECT birth_date
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT * FROM employees