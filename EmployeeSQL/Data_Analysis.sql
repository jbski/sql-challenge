-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employee_info as e
INNER JOIN salary as s
ON e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employee_info
WHERE EXTRACT(ISOYEAR FROM DATE(hire_date)) = '1986'

-- List the manager of each department with the following information: department number, department name,
-- the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, m.emp_no as manager_id, e.last_name, e.first_name FROM department as d
INNER JOIN manager as m
ON d.dept_no = m.dept_no
INNER JOIN employee_info as e
ON m.emp_no = e.emp_no

