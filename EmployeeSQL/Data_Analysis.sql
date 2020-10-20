-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employee_info as e
INNER JOIN salary as s
ON e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employee_info
WHERE EXTRACT(ISOYEAR FROM DATE(hire_date)) = '1986';

-- List the manager of each department with the following information: department number, department name,
-- the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, m.emp_no as manager_id, e.last_name, e.first_name FROM department as d
INNER JOIN manager as m
ON d.dept_no = m.dept_no
INNER JOIN employee_info as e
ON m.emp_no = e.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, i.last_name, i.first_name, d.dept_name FROM Employee as e
INNER JOIN Employee_Info as i
ON e.emp_no = i.emp_no
INNER JOIN Department as d
ON e.dept_no = d.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex FROM Employee_Info
WHERE first_name = 'Hercules' AND left(last_name,1) = 'B';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.	 
SELECT i.emp_no, i.last_name, i.first_name, d.dept_name FROM Employee as e
INNER JOIN Employee_Info as i
ON e.emp_no = i.emp_no
INNER JOIN Department as d
ON e.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';		 
		 
--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT i.emp_no, i.last_name, i.first_name, d.dept_name FROM Employee as e
INNER JOIN Employee_Info as i
ON e.emp_no = i.emp_no
INNER JOIN Department as d
ON e.dept_no = d.dept_no
WHERE d.dept_name in ('Sales', 'Development');

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) FROM Employee_Info 
GROUP BY last_name
ORDER BY COUNT(last_name) desc;




	