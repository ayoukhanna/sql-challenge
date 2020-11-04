CREATE TABLE "department employee" (
  "emp_no" INT,
  "dept_no" VARCHAR
);

CREATE TABLE "salaries" (
  "emp_no" INT,
  "salary" INT
);

CREATE TABLE "employees" (
  "emp_no" INT,
  "emp_title_id" VARCHAR,
  "birth_date " DATE,
  "first_name" VARCHAR,
  "last_name" VARCHAR,
  "sex" VARCHAR,
  "hire_date" DATE
);

CREATE TABLE "department manager" (
  "dept_no" VARCHAR,
  "emp_no" INT
);

CREATE TABLE "departments" (
  "dept_no" VARCHAR,
  "dept_name" VARCHAR
);

CREATE TABLE "titles" (
  "title_id" VARCHAR,
  "title" VARCHAR
);

SELECT employees.emp_no, salary, first_name, last_name, sex FROM salaries
INNER JOIN employees ON salaries.emp_no = employees.emp_no;

DROP TABLE employees;


SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31';

SELECT
employees.first_name,
employees.last_name,
department_manager.emp_no,
departments.dept_no,
departments.dept_name
FROM employees
JOIN department_manager on employees.emp_no=department_manager.emp_no
JOIN departments on departments.dept_no=department_manager.dept_no;

SELECT
employees.first_name,
employees.last_name,
employees.emp_no,
departments.dept_name
FROM employees
JOIN department_employee on employees.emp_no=department_employee.emp_no
JOIN departments on departments.dept_no=department_employee.dept_no;
