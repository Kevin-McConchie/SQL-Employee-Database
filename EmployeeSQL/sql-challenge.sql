-- Question 1
SELECT  e.emp_no,
        e.last_name, 
        e.first_name,
        e.sex,
        s.salary
FROM salaries as s
INNER JOIN employees as e ON e.emp_no=s.emp_no;


-- Question 2
SELECT first_name, last_name,hire_date
FROM employees
WHERE(hire_date BETWEEN '1986-01-01'AND '1986-12-31');

-- Question 3
SELECT dm.dept_no,
       d.dept_name,
       e.emp_no,
       e.last_name,
       e.first_name  
       
FROM dept_manager AS dm
LEFT JOIN employees AS e ON e.emp_no=dm.emp_no
INNER JOIN departments AS d ON dm.dept_no=d.dept_no;      

-- Question 4
SELECT e.emp_no,
       e.last_name,
       e.first_name,
       d.dept_name
       
FROM departments AS d
LEFT JOIN employees AS e ON e.emp_no=e.emp_no

-- Question 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name ='Hercules'
AND last_name LIKE 'B%';

-- Question 6
SELECT e.emp_no,
       e.last_name,
       e.first_name,
       d.dept_name 
       
FROM departments AS d
LEFT JOIN employees AS e ON e.emp_no=e.emp_no
WHERE d.dept_name='Sales';

-- Question 7
SELECT e.emp_no,
       e.last_name,
       e.first_name,
       d.dept_name 
       
FROM departments AS d
LEFT JOIN employees AS e ON e.emp_no=e.emp_no
WHERE d.dept_name='Sales'
OR d.dept_name= 'Development';   

-- Question 8
SELECT e.last_name, COUNT(e.last_name) AS "last_name count"
FROM employees AS e
GROUP BY last_name
ORDER BY "last_name count" DESC;