USE employees;

SELECT * FROM employees.employees
WHERE gender = 'M'
AND (first_name ='Irena' OR first_name = 'Vidya' OR first_name = 'Maya'));

SELECT * FROM employees.employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';


SELECT * FROM employees.employees
WHERE birth_date LIKE '%-12-25' AND (hire_date LIKE '199%');

SELECT * FROM employees.employees
WHERE birth_date LIKE '%-12-25'

SELECT * FROM employees.employees
WHERE last_name LIKE '%q%'  AND last_name NOT LIKE '%qu%';

