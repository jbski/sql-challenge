DROP TABLE Department
DROP TABLE Manager
DROP TABLE Employee
DROP TABLE Salary
DROP TABLE Employee_Info
DROP TABLE Titles

CREATE TABLE Department (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(50)
);

CREATE TABLE Manager (
	dept_no VARCHAR(10) REFERENCES Department(dept_no),
	emp_no VARCHAR(10) PRIMARY KEY	
);

CREATE TABLE Titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(50)
);

CREATE TABLE Employee_Info (
	emp_no VARCHAR(10) PRIMARY KEY,
	emp_title_id VARCHAR(50) REFERENCES Titles(title_id),
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(1),
	hire_date DATE	
);

CREATE TABLE Salary (
	emp_no VARCHAR(10) PRIMARY KEY REFERENCES Employee_Info(emp_no),
	salary float
);

CREATE TABLE Employee (
	emp_no VARCHAR(10) REFERENCES Salary(emp_no),
	dept_no VARCHAR(10) REFERENCES Department(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);




