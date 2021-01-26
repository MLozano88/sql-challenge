DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
	dept_no VARCHAR ,
	dept_name VARCHAR,
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
	emp_no VARCHAR,
	dept_no VARCHAR,
	PRIMARY KEY (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no VARCHAR,
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
	FOREIGN KEY(emp_no) REFERENCES dept_emp (emp_no)
);

CREATE TABLE employees (
	emp_no VARCHAR 
	emp_title_id VARCHAR,
	birth_date TIMESTAMP,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date TIMESTAMP,
	PRIMARY KEY (emp_title_id),
	FOREIGN KEY(emp_no) REFERENCES dept_emp (emp_no)
);

CREATE TABLE salaries (
	emp_no VARCHAR,
	salary INT,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR,
	FOREIGN KEY(title_id) REFERENCES employees (emp_title_id)
);

-- Import data from departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, and titles.csv.
-- View the table to ensure all data has been imported correctly
--SELECT * FROM departments;
--SELECT * FROM dept_emp;
--SELECT * FROM dept_manager;
--SELECT * FROM employees;
--SELECT * FROM salaries;
--SELECT * FROM titles;