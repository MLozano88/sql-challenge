DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
	dept_no VARCHAR (PK),
	dept_name VARCHAR
);

CREATE TABLE dept_emp (
	emp_no VARCHAR,
	dept_no VARCHAR (FK >- departments.dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR (FK >- departments.dept_no),
	emp_no VARCHAR (FK >- dept_emp.emp_no)
);

CREATE TABLE employees (
	emp_no VARCHAR (FK >- dept_emp.emp_no),
	emp_title_id VARCHAR (PK FK >- titles.title_id),
	birth_date TIMESTAMP,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date TIMESTAMP
);

CREATE TABLE salaries (
	emp_no VARCHAR (FK >- dept_emp.emp_no),
	salary INT
);

CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
);

-- Import data from departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, and titles.csv.
-- View the table to ensure all data has been imported correctly
--SELECT * FROM departments;
--SELECT * FROM dept_emp;
--SELECT * FROM dept_manager;
--SELECT * FROM employees;
--SELECT * FROM salaries;
--SELECT * FROM titles;