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
SELECT employees.emp_no, employees.first_name, employees.last_name,dept_manager.dept_no,departments.dept_name
FROM dept_manager
INNER JOIN employees ON
employees.emp_no=dept_manager.emp_no
LEFT JOIN departments ON
dept_manager.dept_no = departments.dept_no;


"List the department of each employee with the following information: 
employee number, last name, first name, and department name."
SELECT employees.emp_no, employees.first_name, employees.last_name,departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no;
 

"List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B.""
SELECT first_name, last_name, sex
FROM employees
WHERE first_name is "Hercules"

"List all employees in the Sales department, including their employee number,
 last name, first name, and department name."


"List all employees in the Sales and Development departments, 
including their employee number, last name, first name, and department name."


"In descending order, list the frequency count of employee last names, 
i.e., how many employees share each last name."