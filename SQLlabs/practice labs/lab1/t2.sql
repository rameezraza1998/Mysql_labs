create database task2;
use task2;
create table t1(id int, name varchar(20),dob date, age int);
describe t1;
# inserting data in table
insert into t1 values('1','ramis','1998-09-30','24'),('2','rameez','1997-09-30','25');
# selecting whole table to look at data
select * from t1;
# selecting single column to look at a data
select name from t1;

alter table t1 add blood_group varchar(20);
insert into t1(blood_group) value ('o-');
# changing value or updating values in given table
update t1 set id=3, dob='1999-10-31' where blood_group='o-';
# truncate command bas=ically use for deleting whole data
delete from t1 where name='ramis';
