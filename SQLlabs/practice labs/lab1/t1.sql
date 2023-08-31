create database task1;
#selected database for working further on it 
use task1;
# for displaying all database
show databases;
# for creating table
create table t1(stud_id int(3),stud_name varchar(50),stud_phone int(10),stud_gpa int(1));
show tables;
# for structure table 
describe t2;
# for renaming table 
rename table t1 to t2;
# for renaming columns
alter table t2 change stud_id id int, change stud_name name varchar(50), change stud_phone phone int(10), change stud_gpa gpa int(1);
# for changing datatype
alter table t2 modify gpa float(5,2);
alter table t2 modify name varchar(100);
# deleting column from table 
alter table t2 drop phone;
# adding column in table 
alter table t2 add phone int after gpa;
#deleting 2 columns in single query 
alter table t2 drop gpa, drop phone;


