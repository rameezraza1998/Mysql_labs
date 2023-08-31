use lab_2;
show tables;
select * from employees;

# task1

create view employeeview as select first_name, hire_date from employees;
describe employeeview;

# task2
insert into employees values('9','Usama','Khan','Head','58000','1996-06-10','2019-08-17','MBBS','Gujrat');

Create View employeeinfo as Select employee_id, first_name, last_name, designation, salary from Employees;
create or replace view employeeinfo as select employee_id, first_name, last_name, designation, salary from Employees;

select * from employees;
select * from employeeview;
select * from employeeinfo;

# task3
select first_name, hire_date from employees where hire_date between"2020-01-01" AND "2020-12-31";

# task4
describe employeeview;
insert into employeeview values('Arees','2012-12-19');
select * from employees;
select * from employeeview;
select * from employeeinfo;

# task5
insert into employeeview values('Faris','2020-08-16');
select * from employees;
select * from employeeview;
select * from employeeinfo;