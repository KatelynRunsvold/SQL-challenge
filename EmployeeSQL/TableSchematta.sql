CREATE TABLE departments (
    dept_no INT NOT NULL,
    dept_name VARCHAR(40) NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
    title_id INT NOT NULL,
    title VARCHAR(50) NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE employees (
    emp_no INT NOT NULL,
	emp_title_id INT NOT NULL,
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    sex VARCHAR(14),
    hire_date DATE,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no INT NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	
);

CREATE TABLE salaries(
	emp_no int NOT NULL,
	salary int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
	






