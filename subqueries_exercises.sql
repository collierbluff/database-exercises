USE employees;

SELECT * FROM employees
WHERE hire_date = '1990-10-22';

-- refactor with sub query

SELECT * FROM employees
WHERE hire_date IN(
SELECT hire_date
FROM employees
WHERE emp_no = 101010);





SELECT DISTINCT title
FROM titles

JOIN employees
ON employees.emp_no = titles.emp_no

WHERE employees.first_name = 'Aamod';

-- refactor with sub query

SELECT DISTINCT title
FROM titles
WHERE emp_no IN(
SELECT emp_no
FROM employees
WHERE first_name = 'Aamod'
)



SELECT first_name, last_name FROM employees
WHERE emp_no IN(

SELECT emp_no
FROM dept_manager
WHERE to_date = '9999-01-01' AND gender = 'F'
)

