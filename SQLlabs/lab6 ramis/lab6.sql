create database L6tasks;
show databases;
use studentDB;
create table t_1(stud_id int(3),stud_name varchar(50),stud_phone int(7),stud_gpa int(1));
show tables;
select * from t_1;
rename table t_1 to student;
select * from student;
alter table student change stud_id id int(3);
select * from student;
alter table student change name name varchar(100); 
alter table student drop phone;
select * from student;
alter table student add (Dob date, semester int(1), department varchar(2));
alter table student drop stud_phone, drop stud_gpa;



#task 1
select * from student;
describe student;
alter table student modify grade enum('A','B','C');
drop table student;
create table student(roll_no int, name varchar(20),marks float(3),grade varchar(20));


insert into student values(1,'ali',80,1),(2,'ramis',90,2),(3,'junaid',98,1),(4,'asfand',91,3);
select roll_no, name,((marks/100)*4) as GPA from student;
insert into student values(4,'umer',100,1);

select cast(((marks/100)*4) as double) as gpa from student;

create temporary table std2 select roll_no,name,marks,grade from student;
select * from std2;
select * from std2 where grade=1;

describe std2;

create table std11 like student;
describe std11;

select * from stdAAA;
create table stdAAA as select * from student;
describe stdAAA;

#task 2
create temporary table stdinfo select roll_no,name,marks,grade from student;
describe student;
select * from student;
select * from stdinfo;
select ((marks/100)*4) as GPA,name from stdinfo where ((marks/100)*4)>=.00;
create table clone_studenttable select roll_no,name,marks,grade from  student;
describe clone_studenttable;
select * from clone_studenttable;
DELETE FROM clone_studenttable
WHERE name='umer';

create table clonestd select roll_no,name,marks,grade from student;
describe clonestd;
select * from clonestd;
select * from student;
#Assignment

