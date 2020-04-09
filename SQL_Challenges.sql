SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salaries
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT *
FROM employees
WHERE hire_date between '12/31/1985' and  '01/01/1987';

SELECT  employees.*, dep_manager.dept_no, dep_manager.from_date, dep_manager.to_date, departments.dept_name
FROM employees
INNER JOIN dep_manager ON employees.emp_no = dep_manager.emp_no
INNER JOIN departments ON dep_manager.dept_no = departments.dept_no;
--List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT dept_emp.*, departments.dept_name, employees.last_name, employees.first_name
FROM dept_emp
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no;
--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM employees
WHERE first_name = 'Hercules' and left(last_name,1) = 'B';
--t all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, departments.dept_name, employees.last_name, employees.first_name
FROM dept_emp
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales';
--list all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, departments.dept_name, employees.last_name, employees.first_name
FROM dept_emp
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';
--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name , COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY count DESC;

