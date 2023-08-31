create database prac01;
use prac01;

create table p_01(roll_no varchar(8),name varchar(20),marks float(4,2),regdate date);
show tables;
describe p_01;
alter table p_01 change roll_no r_no varchar(10);
select * from p_01;

create table p_01b(roll_no varchar(8),name varchar(20),marks float(4,2),regdate date);
describe p_01b;
alter table p_01b change roll_no r_no varchar(8);
alter table p_01b change name s_name varchar(20), change marks s_marks float(4,2), change regdate s_date date;
select * from p_01b;
alter table p_01b modify r_no float(5,3);
alter table p_01b modify s_name char(30), modify s_marks int;
alter table p_01b add email varchar(50);
select * from p_01b;
alter table p_01b drop email;

rename table p_01b to r3;
select * from r3;
rename table r3 to p_01b;

insert into p_01b(r_no,s_name,s_marks,s_date) value('12.999','ramis','50','2022-06-30');
insert into p_01b(r_no,s_name,s_marks,s_date) value('13.999','noor','50','2022-06-30');
insert into p_01b(r_no,s_name,s_marks,s_date) value('14.999','our_baby','50','2022-06-30');
describe p_01b;
show tables;
select * from p_01b;
select s_date,s_name from p_01b;

update p_01b set s_name='cute baby' where s_marks='14.999';
select * from p_01b;
select * from p_01b;

delete from  p_01b where s_name='our_baby';





