-- Basic Level

-- 1. Retrieve all records from the employees table.
SELECT 
emp_id,
emp_name,
dept_id,
job_level,
gender,
experience_years,
location,
salary,
bonus,
attrition
FROM employees

-- 2. Select employee IDs ,names and salaries of employees earning more than 80,000.
SELECT 
emp_id,
emp_name, 
salary
FROM employees
WHERE salary > 80000

-- 3. Find all employees who belong to the IT department.
SELECT e.*
FROM employees e
JOIN departments d 
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

-- 4. Count the total number of employees in the company.
SELECT COUNT(*)
FROM employees

-- 5. List all distinct job levels in the employees table.
SELECT DISTINCT(job_level)
FROM employees

-- Intermediate Level

-- 6. Find the average salary of employees in each department.
SELECT 
d.dept_name,
AVG(salary) AS avg_salary
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY dept_name

-- 7. Count the number of employees in each department. 
SELECT 
d.dept_name,
COUNT(*) Emp_dept
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY dept_name

-- 8. Find the maximum and minimum salary in the company.
SELECT 
MAX(salary) AS max_salary,
MIN(salary) AS min_salary
FROM employees

-- 9. List employees along with their department names (use JOIN).
SELECT 
e.emp_name,
d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id

-- 10. Find the number of employees who left the company (attrition = 'Yes') in each department.
SELECT 
d.dept_name,
COUNT(*) AS attrition_count
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
WHERE LOWER(e.attrition) = 'yes'
GROUP BY dept_name

-- Advanced Level

-- 11. Find the top 5 highest paid employees along with their names.  
SELECT TOP 5
emp_name,
salary
FROM employees
ORDER BY salary DESC

-- 12. Calculate the average salary by job level and sort it in descending order.  
SELECT 
job_level,
AVG(salary) AS avg_salary
FROM employees
GROUP BY job_level
ORDER BY avg_salary DESC;

-- 13. Find the salary rank of each employee within their department.  
SELECT 
e.emp_name,
d.dept_name,
e.salary,
RANK() OVER(PARTITION BY d.dept_name ORDER BY salary DESC)
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id

-- 14. Calculate the cumulative salary (running total) of employees ordered by salary.  
SELECT 
emp_name,
salary,
SUM(salary) OVER(ORDER BY salary DESC) AS cumulative_salary
FROM employees

-- 15. Find the second highest salary in the company. 
SELECT emp_name, salary
FROM (
    SELECT 
        emp_name,
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
    FROM employees
) t
WHERE rnk = 2;


