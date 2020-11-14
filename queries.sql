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

