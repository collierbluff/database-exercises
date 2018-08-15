USE employees;

SELECT * FROM dept_emp;

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) as 'Department Manager', s.salary as Salary
FROM employees as e

JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no

JOIN salaries as s
  ON s.emp_no = dm.emp_no

JOIN departments as d
  ON d.dept_no = dm.dept_no

WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;


SELECT title as Title, COUNT(*) as Count
FROM titles

JOIN dept_emp as de
ON de.emp_no = titles.emp_no

WHERE de.dept_no = 'd009' AND de.to_date = '9999-01-01' AND titles.to_date = '9999-01-01'
GROUP BY title;


SELECT CONCAT(first_name, ' ', last_name) as 'Employee Name', dep.dept_name as 'Department Name', emp.dept_no as 'Department Number'
FROM employees as e

JOIN dept_emp as emp
ON emp.emp_no = e.emp_no

JOIN departments as dep
ON dep.dept_no = emp.dept_no

-- JOIN dept_manager as dm
-- ON dm.emp_no = e.emp_no

WHERE emp.to_date = '9999-01-01';