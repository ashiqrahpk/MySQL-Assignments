CREATE database IF NOT EXISTS employee_db;

USE employee_db;

CREATE table departments(
department_ID INT PRIMARY KEY,
department_name VARCHAR(100)
);

SELECT * FROM departments;


CREATE table locations(
location_ID INT PRIMARY KEY,
location VARCHAR(30)
);

SELECT * FROM locations;


CREATE table employees(
employee_ID INT PRIMARY KEY,
employee_name VARCHAR(50),
gender enum('M','F'),
age INT,
hire_date DATE,
designation VARCHAR(100),
department_ID INT,
FOREIGN KEY (department_ID) REFERENCES departments(department_ID),
location_ID INT,
FOREIGN KEY (location_ID) REFERENCES locations(location_ID),
salary DECIMAL(10,2)
);

SELECT * FROM employees;

ALTER table employees ADD COLUMN(
e_mail VARCHAR(50)
);


ALTER table employees MODIFY designation VARCHAR(500);


ALTER table employees DROP COLUMN age;


ALTER table employees RENAME COLUMN hire_date TO date_of_joining;


RENAME table departments TO departments_info;


RENAME table locations TO location;


TRUNCATE TABLE employees;


DROP table employees;


DROP database employee_db;


CREATE database employees;

USE employees;


CREATE table departments(
department_ID INT PRIMARY KEY,
department_name VARCHAR(100) UNIQUE NOT NULL
);


SELECT * FROM departments;


CREATE table locations(
location_ID INT PRIMARY KEY,
location VARCHAR(30) NOT NULL UNIQUE
);

SELECT * FROM locations;


CREATE table employees(
employee_ID INT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
gender enum('M','F'),
age INT CHECK(age>=18),
hire_date DATE DEFAULT (CURRENT_DATE),
designation VARCHAR(100),
department_ID INT,
FOREIGN KEY (department_ID) REFERENCES departments(department_ID),
location_ID INT,
FOREIGN KEY (location_ID) REFERENCES locations(location_ID),
salary DECIMAL(10,2)
);

SELECT * FROM employees;