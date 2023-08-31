create database lab_ass;

use lab_ass;
create table t1(Name varchar(20), Age int,Gender char(10), Reg_date date, Nick_name varchar(30), phone_no int);
create table t2(Name varchar(20), Age int,Gender char(10), Reg_date date,Nick_name varchar(30), phone_no int);

show tables;
describe t1;
describe t2;

insert into t1(Name,Age,Gender,Reg_date,Nick_name,phone_no) values('Rameez','24','Male','2021-11-01','Ramis',123);
insert into t1(Name,Age,Gender,Reg_date,Nick_name,phone_no) values('Junaid','18','Male','2021-11-01','Ramis',123);
insert into t1(Name,Age,Gender,Reg_date,Nick_name,phone_no) values('Asfand','19','Male','2021-11-01','Ramis',123);
insert into t1(Name,Age,Gender,Reg_date,Nick_name,phone_no) values('Aman','18','Male','2021-11-01','Ramis',123);
insert into t2 values ('Umer','20','Male','2021-11-01','Ramis',123);
insert into t2 values ('Osama','23','Male','2021-11-01','Ramis',123);
insert into t2 values ('Ally','22','Male','2021-11-01','Ramis',123);
insert into t2 values ('Affan','21','Male','2021-11-01','Ramis',123);

select * from t1;
select * from t2;

alter table t2 add Depapartment varchar(30), add Blood_group varchar(10);
alter table t1 modify Age float(2),modify Gender varchar(10);

truncate table t1;
delete from t2 where Name='Ally';

update t2 set Age=26,phone_no=321, Blood_group='A+'
where Name='Umer';



