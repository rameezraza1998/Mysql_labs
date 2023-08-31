create database assignment_2;
use assignment_2;
create table Employees (emp_id int, f_name varchar(50),l_name varchar(50), designation varchar(50), salary float, birth_date date, hire_date date, department varchar (50), city varchar(50));
insert into Employees values ('1','Ramiz','Raza','President','200000','1998-01-01','2010-01-10','CS','Oslo'),('2','Junaid','Anser','CEO','180000','2003-02-23','2013-02-22','SE','Hyderabad'),('3','Mirza','Asfand','Manager','170000','2001-01-11','2011-03-26','BBA','Lahore'),('4','Aman','wasti','vice President','160000','2002-06-10','2021-03-26','CS','Multan'),('5','Naseem','Shah','Manager','160000','1998-06-10','2019-03-26','CS','Quetta'),('6','Muhammad','Daniyal','Auditor','140000','2000-01-11','2021-03-26','CS','Islamabad'),('7','Ahsan','Amir','Senior Developer','100000','2001-03-12','2017-03-26','CS','Peshawar'),('8','Muhammad','Ali','Sales Manager','30000','2000-02-16','2016-03-26','CS','Amsterdam');
describe Employees;
select f_name,l_name,designation,department from Employees;
select f_name,salary,hire_date from Employees order by hire_date desc;
select distinct department from Employees;
select f_name, l_name from Employees
where salary <= 40000 and hire_date between '2021-01-01' and '2021-12-31';
select city from Employees
where city like "%r%" or city like"%i%";
select f_name, department from Employees
where hire_date between "2019-02-01" and "2021-10-31" order by hire_date desc,salary asc;
select f_name, l_name from Employees
where designation = 'Manager' and city = 'Lahore';
select f_name, l_name, salary , salary * 1.2 as new_salary , salary * 0.2 as bonous from Employees
where designation = 'Manager' or designation = 'Auditor' ;

-- lab 3 assignment --
alter table Employees drop f_name, drop l_name;
alter table Employees add emp_name varchar(30) after emp_id;
describe employees;
update employees set emp_name='Ramis' where emp_id='1';
update employees set emp_name='Junaid' where emp_id='2';
update employees set emp_name='Rameez' where emp_id='3';
update employees set emp_name='Affan' where emp_id='4';
update employees set emp_name='Ally' where emp_id='5';
update employees set emp_name='Hussain' where emp_id='6';
update employees set emp_name='Asfand' where emp_id='7';
update employees set emp_name='Umer' where emp_id='8';

select concat(emp_name,",",designation,",",department) from Employees;
select count(designation) as 'No_of_Auditors' from Employees
where designation="Auditor";
select * from employees;
select city,department,count(emp_id) as No_of_Employees from Employees group by department,city; 
select department,avg(salary) as 'Avg salary of departments' from Employees group by department;
select department,count(emp_id) from Employees
where timestampdiff(year,hire_date,curdate())>"8" group by department;
select designation,sum(salary) as 'salary_expenses' from Employees group by designation order by salary_expenses desc;
select count(emp_id) as 'No_of_Employees' from employees;
Select city, department , Avg(salary) as Average_salary from Employees group by department,city having Average_salary>=70000;
