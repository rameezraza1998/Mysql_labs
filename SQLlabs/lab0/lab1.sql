create database Lab1;
use Lab1;
create table t1 (id int, name varchar(20), marks float(4,2), RegDate Date);
describe t1;
alter table t1 change id s_id int,change name s_name varchar(20), change marks s_marks float(4,2),change RegDate s_RegDate Date;

insert into t1(s_id,s_name,s_marks,s_RegDate) values('01','Rameez','22.22','2023-02-02');
insert into t1(s_id,s_name,s_marks,s_RegDate) values('02','Junaid','22.22','2023-02-02');
insert into t1(s_id,s_name,s_marks,s_RegDate) values('03','Balaj','32.22','2023-02-02');

select * from t1;
select s_id,s_name from t1; 
update t1 set s_id=08 
where s_marks='32.22';
