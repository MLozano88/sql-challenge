###Queries for SQL HW###

"List the following details of each employee: employee number, last name, first name, sex, and salary"
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

"List first name, last name, and hire date for employees who were hired in 1986."
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31'

"List the manager of each department with the following information: department number, department name, 
the manager's employee number, last name, first name."
