create database lab4;
use lab4;
#task-1
create table Employee(employeeID int auto_increment primary key, firstName varchar(20), lastName varchar(20), hiringDate date, deptID int, jobID varchar(20),
Foreign Key (deptID) References department(deptID),
Foreign key (jobID) References job(jobID));
create table Department(deptID int auto_increment primary key, deptName varchar(20), locationID int,
Foreign key (locationID) References location(locationID));
create table Job(jobID varchar(20)  primary key check ((jobID LIKE "ENG%") OR (jobID LIKE "MAN%")), jobTitle varchar(20), salary int);
create table Location(locationID int auto_increment primary key, city varchar(20), country varchar(20));
drop table location;
#task-2
describe employee;
describe department;
describe job;
describe location;

#task-3
alter table location alter city set DEFAULT 'Karachi';
alter table location alter country set DEFAULT 'Pakistan';
describe location;

#task-4
insert into  employee values('1','Ramis','Rizvi','2022-05-20','1','ENG123');
insert into  employee values('2','Junaid','Anser','2021-05-20','2','ENG123');
insert into  employee values('3','Asher','Bro','2020-05-20','3','MAN123');
insert into  employee values('4','Asfandyar','Baig','2023-05-20','4','ENG123');

insert into department values('1','finance','1');
insert into department values('2','Marketing','2');
insert into department values('3','Sales','3');
insert into department values('4','teaching','4');

insert into job values ('ENG123','Sales','10000');
insert into job values('ENG143','Marketing','20000');
insert into job values('MAN123','Manager','30000');
insert into job values('ENG154','officer','40000');

insert into location values('1','karachi','pakistan');
insert into location values('2','hyderabad','pakistan');
insert into location values('3','lahore','pakistan');
insert into location values('4','islamabad','pakistan');

drop table location;
select * from employee;
select * from department;
select * from job;
select * from location;

#task-5
alter table employee modify firstName varchar(20) not null;
alter table employee modify lastName varchar(20) not null;
alter table department modify deptName varchar(20) not null;
alter table job modify jobTitle varchar(20) not null;

#task-6
update department set locationID = null where locationID = 1;
delete from location where locationID = 1;
select * from location;

#lab5 Assignment
#task1
select count(employeeid) as no_of_employee, (select max(salary) from job) as maxsalary from Employee
right join Job
on Employee.JobID = Job.JobID;

#task2
Select Employee.employeeid as employee_id, Employee.firstname, Employee.lastname, Job.Jobtitle, Job.salary 
From Employee 
right join Job on Employee.JobID = Job.JobID 
where Job.salary = (select MIN(salary) from Job);

#task3
select JobTitle, concat(employee.firstname,' ', employee.lastname) as Full_name from Job
right join employee
on Employee.JobID = Job.JobID;

#task4
select location.country, count(department.deptname) as total_departments
from location
right join department on department.locationid = location.locationid
group by location.country having count(department.deptname)>2;

#task5
select location.city, concat(employee.firstname,' ', employee.lastname) as Full_name
from location
right join department on department.locationid = location.locationid
right join employee on employee.deptid = department.deptid;

#task6
select department.deptname, concat(employee.firstname,' ', employee.lastname) as Full_name 
from department
right join employee on employee.deptid = department.deptid;