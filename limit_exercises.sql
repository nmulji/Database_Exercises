SELECT last_name
FROM employees
WHERE last_name LIKE 'Z%'
GROUP BY last_name DESC
LIMIT 10;

SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
	AND (
	birth_date LIKE '%-12-25'
)
GROUP BY birth_date ASC, hire_date DESC
LIMIT 5;