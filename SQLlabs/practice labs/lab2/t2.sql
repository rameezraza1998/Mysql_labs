create database task2Lab2;
use task2Lab2;
create table t1(id int, name varchar(20),dob date, semester int, department varchar(19), gpa float (4,3));
describe t1;
# inserting data in table
insert into t1 values('1','ramis','1999-09-30','4','mathematics','3.38'),('2','rameez','1997-09-30','2','electrical','3.18'),('3','Ally','2009-09-30','4','biologi','3.33');
# selecting whole table to look at data
select * from t1;
# selecting single column to look at a data
select id,name, department from t1;

update t1 set  department='mathematics' where id='3';
update t1 set  name='ramis' where id='3';
#selecting distinct columns form table
select distinct department from t1;
select distinct department,name from t1;
# selecting column with where clause
select  name='ramis' from t1 where department='mathematics';

alter table t1 add blood_group varchar(20);
insert into t1(blood_group) value ('o-');
# changing value or updating values in given table
update t1 set id=3, dob='1999-10-31' where blood_group='o-';
# truncate command bas=ically use for deleting whole data
delete from t1 where name='ramis';
drop table t1;
select name as stud_name, department as dept, dob as d_o_b from t1;

# task 2
# selecting all records with where clause
select * from t1 where department='mathematics';
#selecting all records except with dept= mathematics
select name,semester,gpa from t1 where  department!='mathematics';
#
alter table t1 add marks int;
update t1 set marks=95 where id=1;
update t1 set marks=80 where id=2;
update t1 set marks=150 where id=3;
#selecting marks out of 100
select * from t1 where marks <=100;
# using and condition
select name,semester,gpa,department from t1 where gpa <4.000 and semester=4;
# using or condition
select name, semester,department from t1 where department='mathematics' or gpa <=2.999;
# using condition of or
select name, dob, department from t1 where dob>'2000-01-01' or semester<3;
# using between condition
select name, gpa from t1 where gpa between 3.255 and 3.999;
# using like condition
select * from t1 where name like 'a%';

#task 3
select name, department from t1 order by name asc;
select name, id,department,gpa from t1 order by gpa desc;
