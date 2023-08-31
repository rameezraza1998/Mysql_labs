use northwind;
show tables;
select * from suppliers;
describe employees;
create table table1(employeeid int, firstname varchar(20), index (employeeid)); # created table 
describe table1;
describe suppliers;
create index ind1 on employees(employeeid);
create index ind2 on suppliers(supplierid);

create table table2(s_id int, name varchar(20), unique index (s_id));
describe table2;
drop table table2;
describe customers;
create unique index ind3 on products(productname);
ALTER TABLE customers
ADD CONSTRAINT ind5 UNIQUE INDEX (customername);
drop index ind5 on customers; 

#lab 12 practice

use studentDB;
show tables;
describe t_1;
select * from t_1;
insert into t_1 values(1,'ramis',737373,3.33);
insert into t_1 values(2,'ally',799973,3.63);

select * from t_1;
set autocommit=0;

drop table t_1;
delete from t_1 where stud_id=1;
commit;
rollback;
insert into t_1 values(3,'rameez',737373,3.33);
insert into t_1 values(4,'umer',799973,3.63);
savepoint a;
delete from t_1 where stud_id=3;
savepoint b;
rollback to b;

