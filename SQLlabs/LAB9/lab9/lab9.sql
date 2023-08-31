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
            
 # Assignment 9     
 
 describe employees;
 #TASK1
DELIMITER $$
CREATE PROCEDURE T1()
BEGIN
SELECT emp_name,designation, salary FROM EMPLOYEES WHERE salary=(select max(salary) FROM EMPLOYEES) ;
END $$
DELIMITER ;
call T1();

 #TASK2
 select * from employees;

 delimiter $$
create procedure d6(in a int)
begin
select * from employees where salary>a;
end $$
delimiter ;

call d6('160000');
 
 #TASK3
 
delimiter $$
create procedure t3(out avg_salary int)
begin
	select avg(salary) as avg_salary into avg_salary from employees
    where salary in(select min(salary) from employees group by department);
end $$
delimiter ;

call t3(@avg_salary);
select (@avg_salary) avg_salary; 
 
 #TASK4
 
DELIMITER $$
CREATE PROCEDURE cal(IN empid int, OUT bonus varchar(40))
BEGIN
DECLARE current_salary float(10,2);
DECLARE max_salary float(10,2);
SELECT max(salary) INTO max_salary FROM employees;
SELECT salary INTO current_salary FROM employees
WHERE emp_id = empid;
IF current_salary > (0.7*max_salary) THEN
SET bonus = "5% of a salary";
ELSEIF current_salary > (0.5*max_salary) and current_salary <= (0.7*max_salary)  THEN
SET bonus = "15% of a salary";
ELSEIF current_salary > (0.2*max_salary) and current_salary <= (0.5*max_salary)  THEN
SET bonus = "25% of a salary";
ELSEIF current_salary <= (0.2*max_salary) THEN
SET bonus = "35% of a salary";
END IF;
END$$
DELIMITER ;
 drop procedure CAL;

 CALL cal('7', @bonus);
SELECT @bonus bonus; 

 #TASK5
 
 DELIMITER $$
CREATE PROCEDURE cal1(IN empid int, OUT bonus varchar(40))
BEGIN
    DECLARE current_salary float(10,2);
    DECLARE max_salary float(10,2);
    
    SELECT max(salary) INTO max_salary FROM employees;
    SELECT salary INTO current_salary FROM employees WHERE emp_id = empid;
    
    SET bonus = CASE
        WHEN current_salary > (0.7 * max_salary) THEN "5% of a salary"
        WHEN current_salary > (0.5 * max_salary) AND current_salary <= (0.7 * max_salary) THEN "15% of a salary"
        WHEN current_salary > (0.2 * max_salary) AND current_salary <= (0.5 * max_salary) THEN "25% of a salary"
        WHEN current_salary <= (0.2 * max_salary) THEN "35% of a salary"
        ELSE "No bonus"
    END;
END$$
DELIMITER ;

 CALL cal1('8', @bonus);
SELECT @bonus bonus;

  #TASK6
