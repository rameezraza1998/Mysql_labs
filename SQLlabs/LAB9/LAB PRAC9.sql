use northwind;
show tables;

DELIMITER $$
CREATE PROCEDURE c2()
BEGIN
DECLARE a float DEFAULT 2;
SELECT * FROM EMPLOYEES WHERE EMPLOYEEID = a;
END $$
DELIMITER ;

call c2();


DELIMITER $$
CREATE PROCEDURE c5()
BEGIN
DECLARE a varchar(10) DEFAULT 2;
SET a = 4;
SELECT * FROM EMPLOYEES WHERE EMPLOYEEID = a;
END $$
DELIMITER ;

call c5();

delimiter $$
create procedure d6(in a varchar(30))
begin
select * from suppliers where city =a;
end $$
delimiter ;

call d6('Tokyo');

show tables;
describe suppliers;
select city from suppliers;

delimiter $$
create procedure c6(out a int)
begin
select count(*) into a from employees;
end $$
delimiter ;

call c6(@a);
select @a as total_count; #@ basically use for address
select employeeid from employees;




DELIMITER $$
CREATE PROCEDURE M1(IN q varchar(100),OUT r int)
BEGIN
select * from suppliers where city =q;
select count(*) into r from suppliers;
END $$
DELIMITER ;

call M1('tokyo',@r);
select @r as total_count;


DELIMITER $$
CREATE PROCEDURE SalaryStatus(IN fac_id int, OUT salary_status varchar(255))
BEGIN
DECLARE current_salary float(10,2);
DECLARE average_salary float(10,2);
SELECT avg(salary) INTO average_salary FROM faculty;
SELECT salary INTO current_salary FROM faculty
WHERE id = fac_id;
IF current_salary < average_salary THEN
SET salary_status = “Less than average salary”;
ELSEIF current_salary = average_salary THEN
SET salary_status = “Equal to average salary”;
ELSEIF current_salary > average_salary THEN
SET salary_status = “Greater than average salary”;
END IF;
END$$
DELIMITER ;

describe employees;
show tables;

use assignment_2;
show tables;
describe employees;
DELIMITER $$
CREATE PROCEDURE status(inout salary_status varchar(255))
BEGIN
DECLARE current_salary float(10,2);
DECLARE average_salary float(10,2);
SELECT avg(salary) INTO average_salary FROM employees;

END $$
DELIMITER $$