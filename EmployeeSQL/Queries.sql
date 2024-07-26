--1--
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = Salaries.emp_no;

--2--
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'; 

--3--
SELECT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN employees ON dept_manager.emp_no = employees.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no;

--4--
SELECT dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

--5--
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6--
SELECT employees.emp_no, employees.last_name, employees.first_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--7--
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name IN ('Sales', 'Development');

--8--
SELECT last_name, COUNT(*) AS count
FROM employees
GROUP BY last_name
ORDER BY count DESC;