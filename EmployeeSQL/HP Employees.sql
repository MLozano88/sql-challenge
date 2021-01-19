DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

CREATE TABLE dept_emp (
	emp_no SERIAL PRIMARY KEY,
	dept_no VARCHAR FOREIGN KEY "FK >- departments.dept_no"
);

CREATE TABLE dept_manager (
	dept_no VARCHAR FOREIGN KEY "FK >- departments.dept_no"
	emp_no VARCHAR FOREIGN KEY "FK >- dept_emp.emp_no"
);

CREATE TABLE employees (
	emp_no VARCHAR FOREIGN KEY "FK >- dept_emp.emp_no"
	emp_title_id SERIAL PRIMARY KEY,
	birth_date TIMESTAMP,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date TIMESTAMP
);

CREATE TABLE salaries (
	emp_no SERIAL FOREIGN KEY "FK >- dept_emp.emp_no"
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