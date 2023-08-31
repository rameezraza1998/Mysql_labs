create database studentDB;
show databases;
use studentDB;
create table t_1(stud_id int(3),stud_name varchar(50),stud_phone int(7),stud_gpa int(1));
show tables;
select * from t_1;
rename table t_1 to student;
select * from student;
alter table student change stud_id id int(3);
alter table student change stud_name name varchar(50), change stud_phone phone int(10), change stud_gpa gpa int(3,2);
select * from student;
alter table student change name name varchar(100); 
alter table student drop phone;
select * from student;
alter table student add (Dob date, semester int(1), department varchar(2));
alter table student drop stud_phone, drop stud_gpa;
select * from student;


