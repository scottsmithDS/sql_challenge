Create Table dep_manager (
dept_no	VARCHAR,
emp_no	NUMERIC,
from_date	DATE,
to_date	DATE
);
Create Table departments (
dept_no	VARCHAR,
dept_name	VARCHAR
);
Create Table dept_emp (
dept_no	VARCHAR,
emp_no	NUMERIC,
from_date	DATE,
to_date	DATE
);
Create Table employees (
emp_no	NUMERIC,
birth_date	DATE,
first_name VARCHAR,
last_name VARCHAR,
gender VARCHAR,
hire_date DATE
);
Create Table salaries (
salaries	NUMERIC,
emp_no	NUMERIC,
from_date	DATE,
to_date	DATE
);
Create Table titles (
emp_no	NUMERIC,
title	VARCHAR,
from_date DATE,
to_date DATE
);
