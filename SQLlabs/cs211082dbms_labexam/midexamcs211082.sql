create database mid_paper2;
use mid_paper2;
#task 1
create table product(product_id int primary key, productname varchar(40),unitprice float, discontinued int, unitinstock smallint, supplierid int,constraint fk_sid foreign key(supplierid) references supplier(supplierid));
describe product;
create table supplier(supplierid int primary key,companyname varchar(40));
describe supplier;
create table orders(orderid int primary key, orderdate int, requireddate datetime, shippeddate datetime, freight float,shipcity varchar(14));
describe orders;
#task 2
alter table product modify product_id int auto_increment;
alter table product modify productname varchar(40) not null;
alter table supplier modify companyname varchar(40) not null;
select * from orders;
select * from supplier;
select * from product;
describe orders;

#insert into orders(orderdate,requireddate,shippeddate)values('2021-01-01','2021-01-02','2021-01-03') where orderid='11053';

update orders set orderdate='2021-01-01',requireddate='2021-01-02',shippeddate='2021-01-03' where orderid='11053';
#,('2021-01-04','2021-01-05','2021-01-06'),('2021-01-07','2021-01-08','2021-01-09'),

#task 3

select distinct productname from product
where   productname not like "e%" and productname not like "a%" and productname not like "i%" and productname not like "u%" and productname not like "o%" ;


#task 4

select s.supplierid,p.productname,s.companyname from product p
left join supplier s 
on p.supplierid=s.supplierid where companyname = "Exotic Liquids" or companyname = "Specialty Biscuits, Ltd." or companyname = "Escargots Nouveaux" order by supplierid asc;

#task5
select * from product
where discontinued='1';

#task 6
select * from orders ;

#task 7 
select shipcity, avg(freight) as avgerage_freight from orders
group by shipcity order by avgerage_freight desc limit 1,5;

#task 8 
select * from orders
where (orderid%2) != 0;

#task 9
select productname,product_id, unitprice from product
where unitprice between "18" and "40";


