SELECT COUNT(gender), gender
FROM employees
WHERE first_name = 'Irena'
		OR first_name = 'Vidya'
		OR first_name = 'Maya'
GROUP BY gender ASC;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
	AND (
	last_name LIKE '%e'
)
ORDER BY emp_no DESC;

SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
	AND (
	birth_date LIKE '%-12-25'
)
ORDER BY birth_date ASC, hire_date DESC;


SELECT birth_date
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
	AND (
	last_name NOT LIKE '%qu%'
);

SELECT * FROM employees