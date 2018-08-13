USE employees;

SELECT * FROM employees.employees WHERE gender = 'M' AND (first_name ='Irena' OR first_name = 'Vidya' OR first_name = 'Maya'));

SELECT * FROM employees.employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';


--consider refactor
SELECT * FROM employees.employees WHERE birth_date LIKE '%-12-25' AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31');

SELECT * FROM employees.employees WHERE birth_date LIKE '%-12-25'

SELECT * FROM employees.employees WHERE last_name LIKE '%q%'  AND last_name NOT LIKE '%qu%';

