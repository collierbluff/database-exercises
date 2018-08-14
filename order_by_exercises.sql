USE employees;

SELECT * FROM employees
WHERE gender = 'M' AND (first_name ='Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT * FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY emp_no DESC;


SELECT * FROM employees
WHERE birth_date LIKE '%-12-25' AND (hire_date LIKE '199%')
ORDER BY hire_date DESC, birth_date DESC;



SELECT * FROM employees
WHERE birth_date LIKE '%-12-25'

SELECT * FROM employees
WHERE last_name LIKE '%q%'  AND last_name NOT LIKE '%qu%';

