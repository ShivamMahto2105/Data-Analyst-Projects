-- DDL for departments 
CREATE TABLE departments (
    dept_id INT NOT NULL,
    dept_name VARCHAR(50) NOT NULL,
    
    CONSTRAINT pk_departments PRIMARY KEY (dept_id),
    CONSTRAINT uq_dept_name UNIQUE (dept_name)
);

-- DDL for employees
CREATE TABLE employees (
    emp_id INT NOT NULL,
    emp_name VARCHAR(100) NOT NULL,
    dept_id INT NOT NULL,
    job_level VARCHAR(20) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    experience_years INT NOT NULL,
    location VARCHAR(50) NOT NULL,
    salary INT NOT NULL,
    bonus INT NULL,
    attrition VARCHAR(10) NOT NULL,
    
    -- Primary Key
    CONSTRAINT pk_employees PRIMARY KEY (emp_id),

    -- Foreign Key
    CONSTRAINT fk_department FOREIGN KEY (dept_id)
    REFERENCES departments(dept_id)
);

