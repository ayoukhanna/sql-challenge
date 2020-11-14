SELECT employees.emp_no, salary, first_name, last_name, sex 
FROM salaries
INNER JOIN employees 
ON salaries.emp_no = employees.emp_no;

