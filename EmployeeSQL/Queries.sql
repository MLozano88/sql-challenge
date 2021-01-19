###Queries for SQL HW###

"List the following details of each employee: employee number, last name, first name, sex, and salary"
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

"List first name, last name, and hire date for employees who were hired in 1986."
