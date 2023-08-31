create database prac_L7;
use assignment_2;

show tables;
select * from employees;
select * from high_salary;
CREATE VIEW employees_view AS
SELECT emp_name,hire_date FROM employees;
describe employees_view;

CREATE VIEW employees_info AS
SELECT emp_id,designation FROM employees;
describe employees_info;

insert into employees values(9,'Naveed','junior developer',45000, '1986-10-16', '2007-06-01', 'banking','karchi');
select * from employees;
select * from employees_view;
select * from employees_info;

insert into Employees_View values ('Aliza','2012-12-19');

ALTER VIEW employees_view AS
SELECT hire_date,emp_name
FROM employees
WHERE year(hire_date)='2013';

