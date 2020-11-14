--employee number, last name, first name, sex, and salary--
SELECT employees.emp_no, salary, first_name, last_name, sex 
FROM salaries
INNER JOIN employees 
ON salaries.emp_no = employees.emp_no;

--hire in 1986--
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date 
BETWEEN '1986-01-01' and '1986-12-31';

--Department Manager--
SELECT
employees.first_name,
employees.last_name,
department_manager.emp_no,
departments.dept_no,
departments.dept_name
FROM employees
JOIN department_manager on employees.emp_no=department_manager.emp_no
JOIN departments on departments.dept_no=department_manager.dept_no;

--department of each employee--
SELECT
employees.first_name,
employees.last_name,
employees.emp_no,
departments.dept_name
FROM employees
JOIN department_employee on employees.emp_no=department_employee.emp_no
JOIN departments on departments.dept_no=department_employee.dept_no;

--first name is Hercules and last name begins with B--
SELECT first_name,last_name,sex 
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%'

--list of all employees in Sales department--
SELECT
employees.first_name,
employees.last_name,
employees.emp_no,
departments.dept_name
FROM employees
JOIN department_employee on employees.emp_no=department_employee.emp_no
JOIN departments on departments.dept_no=department_employee.dept_no
WHERE departments.dept_name = 'Sales'

--list of employees in the Sales and Development departments"
SELECT
employees.first_name,
employees.last_name,
employees.emp_no,
departments.dept_name
FROM employees
JOIN department_employee on employees.emp_no=department_employee.emp_no
JOIN departments on departments.dept_no=department_employee.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
--count of how many employees share a last name--
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC