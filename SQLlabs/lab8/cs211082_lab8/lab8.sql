create database lab_8;
use assignment_2;

show tables;
describe employees;
select * from employees;

#Lab_Assignment1:
#task1:
select emp_name,designation,salary from employees where salary=(select max(salary) from employees);

#task2:
select emp_name, timestampdiff(year,hire_date,curdate()) as max_experience from employees where timestampdiff(year,hire_date,curdate())=(select max(timestampdiff(year,hire_date,curdate())) from employees);

#task3:
select emp_name, salary as higher_than_avg_salary from employees where salary >(select avg(salary) from employees);

#task4:
select emp_name, salary as highest_paid_salary  from employees where salary= any(select max(salary) from employees group by department);

#task5:
select emp_name, salary as Min_salary  from employees where salary= any(select min(salary) from employees group by department);

#task6:
SELECT department, ROUND((SUM(salary) / (SELECT SUM(salary) FROM employees)) * 100, 2) AS Percentage_expense
FROM employees
GROUP BY department;

#task7:
create table High_Salary AS
select emp_name, designation, salary, department
from Employees
where salary > 60000;
select * from High_Salary;

#task8:
select distinct(department)
from employees
where department in (
	select department 
    from employees 
    group by department
    having avg(salary) < (
		select avg(salary) 
        from employees)
	);

#task9:
select Department, avg(salary) as AVG_Salary
from employees
group by department
having avg(salary) = (
	select min(salary) as Min_Salary
	from (
		select avg(salary) as salary
		from employees
		group by department 
		having avg(salary) < (
			select avg(salary) 
			from employees)
			) as Subquery);